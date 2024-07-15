import 'package:animate_do/animate_do.dart';
import 'package:booklyapp/Core/utils/loggers.dart';
import 'package:booklyapp/Core/utils/validator.dart';
import 'package:booklyapp/Features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInRight(
          child: CustomTextFormField(
            hintText: 'Email',
            controller: emailController,
            prefixIcon: Icons.email_rounded,
            validator: (value) {
              return Validator.validateEmail(value);
            },
          ),
        ),
        const SizedBox(
          height: 13.0,
        ),
        FadeInRight(
          child: CustomTextFormField(
            hintText: 'Password',
            prefixIcon: FontAwesomeIcons.lock,
            suffixIcon: true,
            controller: passController,
            onChanged: (value) {
              AppLogger.print(value);
            },
            validator: (value) {
              return Validator.validatePassword(value);
            },
          ),
        )
      ],
    );
  }
}
