import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';

class CTextfield extends StatelessWidget {
  final Color? backgroundColor;
  final String? hint;
  final double? raduis;
  final Widget? prefix;

  const CTextfield({
    Key? key,
    this.backgroundColor,
    this.hint,
    this.raduis = 15,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? Config.colors.backgroundTextField,
        hintText: hint,
        hintStyle: TextStyle(color: Config.colors.hintColor, fontSize: 20),
        prefixIcon: prefix,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(raduis ?? 15),
        ),
      ),
    );
  }
}
