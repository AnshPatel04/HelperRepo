///---AppOpenAdManager.dart
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppOpenAdManager {
  static const adUnitId = 'ca-app-pub-3940256099942544/3419835294'; // Test ID

  AppOpenAd? _appOpenAd;
  bool _isShowingAd = false;

  void loadAd() {
    AppOpenAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
        },
        onAdFailedToLoad: (error) {
          print(':::: Failed to load AppOpenAd: $error ::::');
        },
      ),
      orientation: AppOpenAd.orientationPortrait,
    );
  }

  void showAdIfAvailable() {
    if (_isShowingAd || _appOpenAd == null) {
      loadAd(); // Load next ad
      return;
    }

    _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        _isShowingAd = false;
        _appOpenAd = null;
        loadAd();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        _isShowingAd = false;
        _appOpenAd = null;
        loadAd();
      },
    );

    _isShowingAd = true;
    _appOpenAd!.show();
  }
}


///---AppLifecycleReactor.dart
import 'package:flutter/widgets.dart';
import 'AppOpenAdManager.dart';

class AppLifecycleReactor with WidgetsBindingObserver {
  final AppOpenAdManager appOpenAdManager;

  AppLifecycleReactor({required this.appOpenAdManager});

  void listenToAppStateChanges() {
    WidgetsBinding.instance.addObserver(this);
  }

  void stopListening() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      appOpenAdManager.showAdIfAvailable();
    }
  }
}


///---HomeScreen.dart
final _appOpenAdManager = AppOpenAdManager();
late AppLifecycleReactor _appLifecycleReactor;
bool _isMobileAdsInitializeCalled = false;
bool _isPrivacyOptionsRequired = false;

@override
void initState() {
  super.initState();

  _appLifecycleReactor = AppLifecycleReactor(
    appOpenAdManager: _appOpenAdManager,
  );
  _appLifecycleReactor.listenToAppStateChanges();

  ConsentManager.instance.gatherConsent((consentGatheringError) {
    if (consentGatheringError != null) {
      debugPrint(
        "${consentGatheringError.errorCode}: ${consentGatheringError.message}",
      );
    }

    _getIsPrivacyOptionsRequired();
    _initializeMobileAdsSDK();
  });

  _initializeMobileAdsSDK(); // for last session consent fallback
}

void _getIsPrivacyOptionsRequired() async {
  if (await ConsentManager.instance.isPrivacyOptionsRequired()) {
    setState(() {
      _isPrivacyOptionsRequired = true;
    });
  }
}

void _initializeMobileAdsSDK() async {
  if (_isMobileAdsInitializeCalled) return;

  if (await ConsentManager.instance.canRequestAds()) {
    _isMobileAdsInitializeCalled = true;

    await MobileAds.instance.initialize();
    _appOpenAdManager.loadAd();
  }
}
