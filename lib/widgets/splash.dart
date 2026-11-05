import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/config/function.dart';

class SplashWidget extends StatelessWidget {
  final int time;
  final Widget child, nextPage;
  const SplashWidget({
    Key? key,
    this.time = 3000, // Default splash time of 3 seconds
    required this.child,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: time), () {
      route(context, nextPage, close: true);
    });
    return child;
  }
}
