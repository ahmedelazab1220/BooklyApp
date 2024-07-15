import 'package:booklyapp/Core/utils/colors.dart';
import 'package:booklyapp/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.suffixIcon = false,
    this.secure = false,
    this.prefixIcon,
    this.validator,
    this.initialValue,
    this.onChanged,
  });

  final String hintText;
  final TextEditingController controller;
  final bool? suffixIcon;
  final bool? secure;
  final IconData? prefixIcon;
  final String? Function(String?)? validator;
  final String? initialValue;
  final void Function(String)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool? _showPassword;

  @override
  void initState() {
    super.initState();
    _showPassword = widget.secure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      validator: widget.validator,
      obscureText: _showPassword!,
      style: Styles.textStyle16,
      controller: widget.controller,
      cursorColor: AppColors.white,
      initialValue: widget.initialValue,
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        hintText: widget.hintText,
        hintStyle: Styles.textStyle16,
        suffixIcon: widget.suffixIcon!
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _showPassword = !_showPassword!;
                  });
                },
                icon: Icon(
                  _showPassword!
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                  color: AppColors.white,
                ),
              )
            : null,
        prefixIcon: widget.prefixIcon != null
            ? Icon(
                widget.prefixIcon,
                color: AppColors.white,
              )
            : null,
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(
        color: AppColors.white,
      ),
    );
  }
}
