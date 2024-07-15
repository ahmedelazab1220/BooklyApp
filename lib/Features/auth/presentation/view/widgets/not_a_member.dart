import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/auth/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NotAMemberWidget extends StatelessWidget {
  const NotAMemberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'don\'t have an account?',
          style: Styles.textStyle15.copyWith(
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const CustomButton(
          text: 'Register Now',
          backgorundColor: Colors.transparent,
          textStyle: Styles.textStyle16,
          horizontalPadding: 5.0,
        ),
      ],
    );
  }
}
