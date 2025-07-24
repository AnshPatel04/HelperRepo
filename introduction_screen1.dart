import 'package:flutter/material.dart';
import 'package:screens/utils/press_unpress_widget.dart';

import 'home_screen.dart';

class IntroductionScreen1 extends StatefulWidget {
  const IntroductionScreen1({super.key});

  @override
  State<IntroductionScreen1> createState() => _IntroductionScreen1State();
}

class _IntroductionScreen1State extends State<IntroductionScreen1> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double mediaWidth = mediaQuery.size.width;
    final double mediaHeight = mediaQuery.size.height;

    final List<Widget> pages = [
      Stack(
        children: [
          SizedBox(
            height: mediaHeight,
            width: mediaWidth,
            child: const Image(
              image: AssetImage(
                'assets/Introduction/Introduction1/guide_1_img.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: mediaWidth * 0.1,
            bottom: mediaHeight * 0.35,
            child: Text(
              'Create Your Bald Look',
              style: TextStyle(
                fontSize: mediaHeight * 0.034,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.09,
            bottom: mediaHeight * 0.29,
            child: Text(
              'Create Your Bald Look" lets you try',
              style: TextStyle(
                fontSize: mediaHeight * 0.022,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.09,
            bottom: mediaHeight * 0.26,
            child: Text(
              'different bald styles with a realistic',
              style: TextStyle(
                fontSize: mediaHeight * 0.022,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.3,
            bottom: mediaHeight * 0.23,
            child: Text(
              'preview instantly.',
              style: TextStyle(
                fontSize: mediaHeight * 0.022,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.4,
            bottom: mediaHeight * 0.05,
            child: SizedBox(
              width: mediaWidth * 0.2,
              child: PressUnPressWidget(
                onTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 4),
                    curve: Curves.easeInOut,
                  );
                },
                widget: const Image(
                  image: AssetImage(
                    'assets/Introduction/Introduction1/guide_1_indicator.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      Stack(
        children: [
          SizedBox(
            height: mediaHeight,
            width: mediaWidth,
            child: const Image(
              image: AssetImage(
                'assets/Introduction/Introduction2/guide_2_img.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: mediaWidth * 0.17,
            bottom: mediaHeight * 0.35,
            child: Text(
              'Image to Animation',
              style: TextStyle(
                fontSize: mediaHeight * 0.034,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.09,
            bottom: mediaHeight * 0.29,
            child: Text(
              'Transform still images into dynamic',
              style: TextStyle(
                fontSize: mediaHeight * 0.021,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.07,
            bottom: mediaHeight * 0.26,
            child: Text(
              'animations, bringing your photos to life',
              style: TextStyle(
                fontSize: mediaHeight * 0.021,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.17,
            bottom: mediaHeight * 0.23,
            child: Text(
              'with movement and creativity.',
              style: TextStyle(
                fontSize: mediaHeight * 0.022,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.4,
            bottom: mediaHeight * 0.05,
            child: SizedBox(
              width: mediaWidth * 0.2,
              child: PressUnPressWidget(
                onTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 4),
                    curve: Curves.easeInOut,
                  );
                },
                widget: const Image(
                  image: AssetImage(
                    'assets/Introduction/Introduction2/guide_2_indicator.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      Stack(
        children: [
          SizedBox(
            height: mediaHeight,
            width: mediaWidth,
            child: const Image(
              image: AssetImage(
                'assets/Introduction/Introduction3/guide_3_img.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: mediaWidth * 0.09,
            bottom: mediaHeight * 0.35,
            child: Text(
              'Your especial Collection',
              style: TextStyle(
                fontSize: mediaHeight * 0.031,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.09,
            bottom: mediaHeight * 0.29,
            child: Text(
              'organizes your best bald looks and',
              style: TextStyle(
                fontSize: mediaHeight * 0.022,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.1,
            bottom: mediaHeight * 0.26,
            child: Text(
              'enhanced photos for easy access,',
              style: TextStyle(
                fontSize: mediaHeight * 0.022,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.29,
            bottom: mediaHeight * 0.23,
            child: Text(
              'sharing and viewing.',
              style: TextStyle(
                fontSize: mediaHeight * 0.022,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: mediaWidth * 0.4,
            bottom: mediaHeight * 0.05,
            child: SizedBox(
              width: mediaWidth * 0.2,
              child: PressUnPressWidget(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                widget: const Image(
                  image: AssetImage(
                    'assets/Introduction/Introduction3/guide_3_indicator.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: pages,
        ),
      ),
    );
  }
}
