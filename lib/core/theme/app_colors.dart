import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF00434C);
  static const Color secondary = Colors.black54;
  static final Color background = Colors.grey.shade300;
  static const Color card = Colors.white;
  static const Color error = Color(0xFFB00020);
  static const Color textPrimary = primary;
  static const Color textSecondary = Colors.white70;
  static const Color onPrimary = Colors.white70;
  static const Color unselectedTab = Color(0xffd9eff2);
  static const Color divider = Color(0xffcecece);
  static const Color white = Colors.white;

  static const Color pink = Colors.pink;
  static const Color orange = Colors.deepOrange;

  /// Social Medias
  static const Color facebook = Color(0xff3b5998);
  static const Color twitter = Color(0xff1da1f2);
  static const Color google = Color(0xffea4335);

  static const Gradient signInGradient = LinearGradient(
    colors: [
      AppColors.pink,
      AppColors.pink,
      AppColors.orange,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient signUpGradient = LinearGradient(
    colors: [
      AppColors.orange,
      AppColors.pink,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
