import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/splashscreen.dart';
import 'package:food_app/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        fontFamily: 'DarkerGrotesque',
        primaryColor: Config.colors.primaryColor,
      ),
      home: SplashWidget(
        child: Splashscreen(),
        nextPage: Home(),
        time: 120,
      ),
    );
  }
}

