import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String title;
  final Color titleColor, borderColor, color;
  final double radius, height;
  final bool border;
  final VoidCallback onPressed;

  const CButton({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.borderColor,
    required this.color,
    required this.radius,
    required this.height,
    required this.border,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}