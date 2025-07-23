import 'package:flutter/material.dart';
import 'package:screens/utils/press_unpress_widget.dart';

import 'box.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double mediaWidth = mediaQuery.size.width;
    final double mediaHeight = mediaQuery.size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: mediaHeight,
              width: mediaWidth,
              child: const Image(
                image: AssetImage(
                  'assets/home/bg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: mediaWidth * 0.03, top: mediaHeight * 0.015),
                      child: Text('Bald Your Head', style: TextStyle(fontSize: mediaHeight * 0.028, fontWeight: FontWeight.bold),),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      width: mediaWidth * 0.17,
                      child: PressUnPressWidget(
                        onTap: () {

                        },
                        widget: Image(
                          image: AssetImage(
                            'assets/home/coin.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.03,
                    ),
                    SizedBox(
                      width: mediaWidth * 0.09,
                      child: PressUnPressWidget(
                        onTap: () {

                        },
                        widget: Image(
                          image: AssetImage(
                            'assets/home/my_creation.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.03,
                    ),
                    SizedBox(
                      width: mediaWidth * 0.09,
                      child: PressUnPressWidget(
                        onTap: () {

                        },
                        widget: Image(
                          image: AssetImage(
                            'assets/home/setting.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.009,
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaWidth * 0.05,
                ),

                SizedBox(
                  width: mediaWidth * 0.9,
                  child: PressUnPressWidget(
                    onTap: () {
                      _showMyDialog(context);
                    },
                    widget:  Stack(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/home/btn/Remove BG.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                        Positioned(
                            top: mediaHeight * 0.023,
                            right: mediaWidth*0.06,
                            child: Container(
                              // color: Colors.brown,
                              width: mediaWidth*0.2,
                              height: mediaHeight*0.104,
                              child: Column(
                                children: [
                                  Text('Remove BackGround',
                                    style: TextStyle(fontSize: mediaWidth*0.035,fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,),
                                  SizedBox(
                                    height: mediaHeight * 0.014,
                                  ),
                                  Text('Remove BackGround',
                                    style: TextStyle(fontSize: mediaWidth*0.03,fontWeight: FontWeight.bold,color: Colors.grey),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),


                SizedBox(
                  height: mediaWidth * 0.05,
                ),

                SizedBox(
                  width: mediaWidth * 0.9,
                  child: PressUnPressWidget(
                    onTap: () {
                      _showMyDialog(context);
                    },
                    widget:  Stack(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/home/btn/Disney Style.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                        Positioned(
                            top: mediaHeight * 0.023,
                            right: mediaWidth*0.06,
                            child: Container(
                              // color: Colors.brown,
                              width: mediaWidth*0.2,
                              height: mediaHeight*0.104,
                              child: Column(
                                children: [
                                  Text('Cartoon Styles',
                                    style: TextStyle(fontSize: mediaWidth*0.035,fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,),
                                  SizedBox(
                                    height: mediaHeight * 0.014,
                                  ),
                                  Text('Cartoon Art Styles',
                                    style: TextStyle(fontSize: mediaWidth*0.03,fontWeight: FontWeight.bold,color: Colors.grey),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: mediaWidth * 0.05,
                ),
                SizedBox(
                  width: mediaWidth * 0.9,
                  child: PressUnPressWidget(
                    onTap: () {
                      _showMyDialog(context);
                    },
                    widget:  Stack(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/home/btn/Bald Head.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                        Positioned(
                            top: mediaHeight * 0.023,
                            right: mediaWidth*0.06,
                            child: Container(
                              // color: Colors.brown,
                              width: mediaWidth*0.2,
                              height: mediaHeight*0.104,
                              child: Column(
                                children: [
                                  Text('Hair style Changer',
                                    style: TextStyle(fontSize: mediaWidth*0.035,fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,),
                                  SizedBox(
                                    height: mediaHeight * 0.014,
                                  ),
                                  Text('Hair style Changer',
                                    style: TextStyle(fontSize: mediaWidth*0.03,fontWeight: FontWeight.bold,color: Colors.grey),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaWidth * 0.05,
                ),
                SizedBox(
                  width: mediaWidth * 0.9,
                  child: PressUnPressWidget(
                    onTap: () {
                      _showMyDialog(context);
                    },
                    widget:  Stack(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/home/btn/Elf Style.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                        Positioned(
                            top: mediaHeight * 0.023,
                            right: mediaWidth*0.06,
                            child: Container(
                              // color: Colors.brown,
                              width: mediaWidth*0.2,
                              height: mediaHeight*0.104,
                              child: Column(
                                children: [
                                  Text('Face Swap',
                                    style: TextStyle(fontSize: mediaWidth*0.035,fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,),
                                  SizedBox(
                                    height: mediaHeight * 0.014,
                                  ),
                                  Text('Face Swap.',
                                    style: TextStyle(fontSize: mediaWidth*0.03,fontWeight: FontWeight.bold,color: Colors.grey),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showMyDialog(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
          child: Stack(
            children: [
              SizedBox(
                height: mediaHeight,
                width: mediaWidth,
                child: GestureDetector(
                  onTap: () => Navigator.of(ctx).pop(),
                  child: const Image(
                    image: AssetImage('assets/home/dialog/black_transparent.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  width: mediaWidth * 0.9,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(ctx).pop(),
                        child: Image.asset(
                          'assets/home/dialog/dialog_bg.png',
                          fit: BoxFit.cover,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaWidth * 0.04,
                          vertical: mediaHeight * 0.02,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Title Row
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  'Add Image From',
                                  style: TextStyle(
                                    fontSize: mediaWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: mediaWidth * 0.09),
                                // GestureDetector(
                                //   onTap: () => Navigator.of(ctx).pop(),
                                PressUnPressWidget(
                                  onTap: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  widget: SizedBox(
                                    width: mediaWidth * 0.09,
                                    child: Image.asset(
                                      'assets/home/dialog/close.png',
                                    ),
                                  ),
                                ),
                                SizedBox(width: mediaWidth * 0.03),
                              ],
                            ),

                            SizedBox(height: mediaHeight * 0.02),

                            Text(
                              'Select Option And Add image for apply effect & Generate output',
                              style: TextStyle(color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),

                            SizedBox(height: mediaHeight * 0.02),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: mediaHeight * 0.1,
                                      child: Image.asset(
                                        'assets/home/dialog/camera1.png',
                                      ),
                                    ),
                                    Text(
                                      'Camera',
                                      style: TextStyle(
                                        fontSize: mediaWidth * 0.05,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: mediaHeight * 0.1,
                                      child: Image.asset(
                                        'assets/home/dialog/gallery.png',
                                      ),
                                    ),
                                    Text(
                                      'Gallery',
                                      style: TextStyle(
                                        fontSize: mediaWidth * 0.05,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }


}
