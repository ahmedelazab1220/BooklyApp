import 'package:animate_do/animate_do.dart';
import 'package:booklyapp/Core/utils/app_router.dart';
import 'package:booklyapp/Core/utils/images.dart';
import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/auth/presentation/view/widgets/custom_button.dart';
import 'package:booklyapp/Features/auth/presentation/view/widgets/login_form.dart';
import 'package:booklyapp/Features/auth/presentation/view/widgets/not_a_member.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.26,
            ),
          ),
          SliverToBoxAdapter(
            child: FadeInDown(
              child: Image.asset(
                AppImages.logo,
                height: MediaQuery.of(context).size.height * 0.14,
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 45.0),
          ),
          const SliverToBoxAdapter(
            child: LoginForm(),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          SliverToBoxAdapter(
            child: FadeInRight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: CustomButton(
                      text: 'Forget Password?',
                      backgorundColor: Colors.transparent,
                      textStyle: Styles.textStyle16.copyWith(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 50.0),
          ),
          SliverToBoxAdapter(
            child: FadeInRight(
              child: CustomButton(
                text: 'Login',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kTestScreen);
                },
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          SliverToBoxAdapter(
            child: FadeInUp(child: const NotAMemberWidget()),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(bottom: 15.0),
          ),
        ],
      ),
    );
  }
}
