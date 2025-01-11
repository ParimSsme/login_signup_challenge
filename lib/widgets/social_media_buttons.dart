import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:login_signup_challenge/controllers/auth_controller.dart';
import '../core/assets/app_icons_assets.dart';
import '../core/theme/app_colors.dart';

List<Widget> generateSocialMediaButtons(Size size) {
  final buttons = [
    _SocialMediaButton(
      bgColor: AppColors.google,
      iconColor: AppColors.white,
      image: AppIconAssets.google,
      top: size.height * 0.75,
      parentHeight: size.height,
      left: size.width * 0.1,
    ),
    _SocialMediaButton(
      bgColor: AppColors.facebook,
      iconColor: AppColors.white,
      image: AppIconAssets.facebook,
      top: size.height * 0.8,
      parentHeight: size.height,
      left: size.width * 0.3,
    ),
    _SocialMediaButton(
      bgColor: AppColors.twitter,
      iconColor: AppColors.white,
      image: AppIconAssets.twitter,
      top: size.height * 0.85,
      parentHeight: size.height,
      left: size.width * 0.5,
    ),
    _SocialMediaButton(
      bgColor: AppColors.white,
      iconColor: AppColors.google,
      image: AppIconAssets.google,
      top: size.height * 0.05,
      parentHeight: size.height,
      left: size.width * 0.3,
      isSignUp: true,
    ),
    _SocialMediaButton(
      bgColor: AppColors.white,
      iconColor: AppColors.facebook,
      image: AppIconAssets.facebook,
      top: size.height * 0.1,
      parentHeight: size.height,
      left: size.width * 0.5,
      isSignUp: true,
    ),
    _SocialMediaButton(
      bgColor: AppColors.white,
      iconColor: AppColors.twitter,
      image: AppIconAssets.twitter,
      top: size.height * 0.15,
      parentHeight: size.height,
      left: size.width * 0.7,
      isSignUp: true,
    ),
  ];
  return buttons;
}

class _SocialMediaButton extends StatelessWidget {
  final Color bgColor;
  final Color iconColor;
  final String image;
  final double top;
  final double parentHeight;
  final double left;
  final bool isSignUp;
  const _SocialMediaButton({
    required this.bgColor,
    required this.iconColor,
    required this.image,
    required this.top,
    required this.parentHeight,
    required this.left,
    this.isSignUp = false,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: InkWell(
          onTap: () {},
          child: Obx(
            () => Transform(
              alignment: Alignment.center,
              transform: Matrix4.translationValues(
                  (isSignUp
                          ? 1 - AuthController.to.selectedIndex.value
                          : AuthController.to.selectedIndex.value) *
                      parentHeight,
                  0,
                  0.0),
              child: Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor,
                ),
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(iconColor, BlendMode.srcATop),
                ),
              ),
            ),
          ).animate().fade()),
    );
  }
}
