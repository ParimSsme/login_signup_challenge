import 'package:flutter/material.dart';
import 'package:login_signup_challenge/clippers/sign_in_clipper.dart';
import 'package:login_signup_challenge/controllers/auth_controller.dart';
import '../core/theme/app_colors.dart';
import 'app_contained_text_button.dart';
import 'app_text_field.dart';
import 'circle_icon_button.dart';
import 'logo_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SignInClipper(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.card,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: <Widget>[
              LogoText(),
              Spacer(
                flex: 2,
              ),
              AppTextField(
                hintText: "Enter your email",
                labelText: "Email",
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
              AppTextField(
                hintText: "Enter your password",
                labelText: "Password",
                icon: Icons.key,
                obscureText: true,
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
              Spacer(
                flex: 2,
              ),
              Align(
                alignment: FractionalOffset.bottomRight,
                child: AppContainedTextButton(
                  text: 'Login',
                  gradient: AppColors.signInGradient,
                  onPressed: () {},
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: CircleIconButton(
                  onPressed: () => AuthController.to.navigateToPage(1),
                  icon: Icons.arrow_upward,
                  backgroundColor: AppColors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
