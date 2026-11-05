import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';

class CButton extends StatelessWidget {
  final String? title;
  final Color? titleColor, borderColor, color;
  final double radius, height;
  final bool border;
  final VoidCallback? onPressed;

  CButton({
    Key? key,
    this.title,
    this.titleColor,
    this.borderColor,
    this.color,
    this.radius = 10,
    this.height = 15,
    this.border = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title ?? "",
        style: TextStyle(fontSize: 16, color: titleColor ?? Colors.white),
      ),
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            side: border
                ? BorderSide(color: borderColor ?? Config.colors.primaryColor, width: 2)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(horizontal: 20, vertical: height),
        ),
        backgroundColor: WidgetStateProperty.all<Color?>(
          color ?? Config.colors.primaryColor,
        ),
      ),
    );
  }
}
