import 'package:flutter/material.dart';

class Config {
  static final colors = _Color();
  static final assets = _Assets();
  static final styles = _Style();
}

class _Color {
  final primaryColor = Color(0xFFFFA451);
  final primaryTextColor = Color(0xFF27214D);
  final subtitleColor = Color(0xFF5D577E);
  final accentTextColor = Color(0xFF938DB5);
  final greenColor = Color(0xFF4CD964);
  final backgroundTextField = Color(0xFFF3F1F1);
  final hintColor = Color(0xFFC2BDBD);
}

class _Assets {
  final splash_img = 'assets/images/splash_img.png';
  final welcome_img = 'assets/images/basket-of-fruit-cartoon.png';
  final authentification_img = 'assets/images/kisspng-fruit-basket.png';
  final food_img = 'assets/images/Glowing-Berry-Fruit-Salad.png';
}

class _Style {
  final titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Config.colors.primaryTextColor,
  );
}
