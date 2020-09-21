import 'package:flutter/material.dart';
import 'package:crawl_splash/crawlsplash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Give Splash Screen Path as First Screen
      initialRoute: BasicSplashScreen.id,
      routes: {
        BasicSplashScreen.id: (context) => BasicSplashScreen(
              // Background color of the screen
              backgroundColor: const [
                Colors.white,
              ],

              // Time for which screen will show up
              duration: 1,

              // Image path => Asset Image ONLY
              imagePath: 'assets/images/instagram.png',

              // Image Height
              iconHeight: 100,

              // Image Width
              iconWidth: 200,

              // Splash screen text => Not Required
              primaryText: 'Instagram',

              // Screen Text Color
              primaryTextColor: Colors.pink,

              // Screen Text Font
              primaryTextFont: 'Roboto',

              // Screen Text Size
              primaryTextSize: 30,

              // Screen Text Font Weight
              primaryTextWeight: FontWeight.w400,

              // Replace null with your landing screen route
              nextScreenPath: null,

              // Change it to true to check how your splash screen looks like
              debug: false,
            ),
      },
    );
  }
}
