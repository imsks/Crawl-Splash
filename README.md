# Crawl Splash

A flutter package that helps you build beautiful splash screens for your app.

## Why We Build?

Can you build a **Splash screen within minutes** for your app? This is where we help you do that.

![Build Status](https://img.shields.io/badge/Build-Passing-blue) ![Build Status](https://img.shields.io/badge/Release-V0.1.0-green) ![Build Status](https://img.shields.io/badge/license-MIT-red) ![Build Status](https://img.shields.io/badge/Contribution-Open-Yellow) ![Build Status](https://img.shields.io/badge/Platform-Flutter-orange) ![Build Status](https://img.shields.io/badge/Language-Dart-DarkPink)

## Screenshots

<img src="https://raw.githubusercontent.com/imsks/Crawl-Splash/master/screenshots/crawl-splash-img-1.jpg"  height = "400" alt="PieChart">

## Usage

### Import this class

```dart
import 'package:crawlsplash/src/basic_crawl_splash_screen.dart';
```

### Add the On-Boarding screen

```dart
import 'package:flutter/material.dart';
import 'package:crawlsplash/src/basic_crawl_splash_screen.dart';

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

```

## Features

- You can customize your Splash Screens with content and styling.

## Contribution

**The project is open for contribution. Anyone willing to code fresh splash screens, customize content for users will be welcomed.**

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -m 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
