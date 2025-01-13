import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_challenge/controllers/auth_controller.dart';
import 'package:login_signup_challenge/widgets/login_view.dart';
import 'package:login_signup_challenge/widgets/sign_up_view.dart';
import '../widgets/background_container.dart';
import '../widgets/social_media_buttons.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [

            ...backgroundWidgets(size),

            NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification &&
                    notification.depth == 0) {
                  controller.selectedIndex.value = controller.pageController.page!;
                }
                return false;
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: PageView(
                  controller: controller.pageController,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    controller.selectedIndex.value = index.toDouble();
                  },
                  children: [
                    LoginView(),
                    SignUpView(),
                  ],
                ),
              ),
              /// 500 milliseconds delay for background widgets animations
            ).animate().fade(delay: Duration(milliseconds: 500), duration: Duration(seconds: 1)),
            ...generateSocialMediaButtons(size),
          ],
        ),
      ),
    );
  }
}
