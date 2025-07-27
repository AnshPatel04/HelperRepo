<activity
            android:name="com.yalantis.ucrop.UCropActivity"
            android:screenOrientation="portrait"
            android:theme="@style/Theme.AppCompat.Light.NoActionBar"/>


Future<bool> requestPermissions({bool isCamera = false}) async {
  if (Platform.isAndroid) {
    if (isCamera) {
      var cameraStatus = await Permission.camera.request();
      return cameraStatus.isGranted;
    } else {
      var mediaStatus = await Permission.photos.request(); // Android 13+
      if (!mediaStatus.isGranted) {
        mediaStatus = await Permission.storage.request(); // Below Android 13
      }
      return mediaStatus.isGranted;
    }
  } else if (Platform.isIOS) {
    var photoStatus = await Permission.photos.request();
    return photoStatus.isGranted;
  }
  return false;
}

Future<File?> getImage2({bool isCam = false, bool isExtra = false}) async {
  try {
    bool permissionGranted = await requestPermissions(isCamera: isCam);
    if (!permissionGranted) {
      print(':::: Permission denied. ::::');
      return null;
    }

    // Step 2: Pick the image
    final picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: isCam ? ImageSource.camera : ImageSource.gallery,
    );

    if (pickedFile == null) {
      print(':::: No image selected. ::::');
      return null;
    }

    // Step 3: Crop the image
    final CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: pickedFile.path,
      compressQuality: 90,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: Colors.deepPurple,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        IOSUiSettings(
          title: 'Crop Image',
        ),
      ],
    );

    if (croppedFile == null) {
      print(':::: Cropping cancelled or failed. ::::');
      return null;
    }

    final File imageFile = File(croppedFile.path);
    print(':::: Cropped image path: ${imageFile.path} ::::');

    if (!imageFile.existsSync()) {
      print(':::: Cropped file does not exist. ::::');
      return null;
    }

    return imageFile;
  } catch (e, stack) {
    print(':::: Exception occurred while picking/cropping image: $e ::::');
    print(stack);
    return null;
  }
}
