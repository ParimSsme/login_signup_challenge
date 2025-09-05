import 'package:flutter/material.dart';
import 'package:login_signup_challenge/widgets/circle_icon_button.dart';
import 'package:login_signup_challenge/widgets/logo_text.dart';
import 'package:login_signup_challenge/controllers/auth_controller.dart';
import '../clippers/sign_up_clipper.dart';
import '../core/theme/app_colors.dart';
import 'app_contained_text_button.dart';
import 'app_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: SignUpClipper(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.card,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 25,
            left: 15,
            right: 25,
            bottom: 40
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: <Widget>[
              CircleIconButton(
                onPressed: () => AuthController.to.navigateToPage(0),
                icon: Icons.arrow_downward,
                backgroundColor: AppColors.orange,
              ),
              Spacer(
                flex: 1,
              ),
              LogoText(),
              Spacer(
                flex: 1,
              ),
              AppTextField(
                hintText: "Enter your name",
                labelText: "Name",
                icon: Icons.person_2_rounded,
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                onSubmitted: (value) {},
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
              AppTextField(
                hintText: "Enter your confirm password",
                labelText: "Confirm Password",
                icon: Icons.key,
                obscureText: true,
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: FractionalOffset.bottomRight,
                child: AppContainedTextButton(
                  text: 'Signup',
                  gradient: AppColors.signUpGradient,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
