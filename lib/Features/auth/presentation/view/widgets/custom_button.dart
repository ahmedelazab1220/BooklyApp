import 'package:booklyapp/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.backgorundColor,
      this.textStyle,
      this.redius,
      this.horizontalPadding});

  final String text;
  final void Function()? onPressed;
  final Color? backgorundColor;
  final double? redius;
  final TextStyle? textStyle;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 0.0),
        backgroundColor: backgorundColor ?? Colors.white.withBlue(245),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(redius ?? 12.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? Styles.textStyle20,
      ),
    );
  }
}
