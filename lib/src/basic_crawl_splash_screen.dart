import 'package:flutter/material.dart';
import 'dart:async';
import 'package:crawl_splash/utilities/bgDecoration.dart';

class BasicSplashScreen extends StatefulWidget {
  static const String id = 'splashScreen';

  // Background color of the screen
  @required
  final List<Color> backgroundColor;

  // Time for which screen will show up
  @required
  final int duration;

  // Image path => Asset Image ONLY
  @required
  final String imagePath;

  // Image Height
  final double iconHeight;

  // Image Width
  final double iconWidth;

  // Next screen it will land after the splash screen => Route name
  @required
  final String nextScreenPath;

  // Splash screen text => Not Required
  final String primaryText;

  // Screen Text color
  final Color primaryTextColor;

  // Screen Text Size
  final double primaryTextSize;

  // Screen Text font
  final String primaryTextFont;

  // Screen Text font
  final FontWeight primaryTextWeight;

  // Check if user is debugging
  final bool debug;

  BasicSplashScreen(
      {this.backgroundColor,
      this.duration,
      this.imagePath,
      this.nextScreenPath,
      this.primaryText,
      this.iconHeight,
      this.iconWidth,
      this.primaryTextColor,
      this.primaryTextFont,
      this.primaryTextSize,
      this.primaryTextWeight,
      this.debug});

  @override
  _BasicSplashScreenState createState() => _BasicSplashScreenState();
}

class _BasicSplashScreenState extends State<BasicSplashScreen> {
  @override
  void initState() {
    super.initState();
    if (!widget.debug && widget.nextScreenPath != "") {
      new Future.delayed(
        Duration(seconds: widget.duration),
        () => Navigator.pushReplacementNamed(context, widget.nextScreenPath),
      );
    }

    if (widget.nextScreenPath != "") {
      print(
          "You've not given Landing Screen Path. Please give the path as string as explained in doc.");
    }
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: bgBoxDecoration(widget.backgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            widget.imagePath,
            height: widget.iconHeight,
            width: widget.iconWidth,
          ),
          Text(
            widget.primaryText,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: widget.primaryTextColor,
              fontFamily: widget.primaryTextFont,
              fontSize: widget.primaryTextSize,
              fontWeight: widget.primaryTextWeight,
            ),
          ),
        ],
      ),
    );
  }
}
