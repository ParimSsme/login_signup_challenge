import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../core/theme/app_colors.dart';

List<Widget> backgroundWidgets(Size size) {
  return [
    Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: size.height * 0.4,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.elliptical(size.width / 2, 170),
            bottomLeft: Radius.elliptical(size.width / 2, 40),
          ),
          gradient: LinearGradient(
            begin: FractionalOffset.bottomLeft,
            end: FractionalOffset.topRight,
            colors: <Color>[
              AppColors.pink.withValues(alpha: 0.7),
              AppColors.orange.withValues(alpha: 0.7),
            ],
          ),
        ),
      ).animate().scale(duration: Duration(milliseconds: 500)),
    ),
    Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: size.height * 0.55,
        width: size.width*0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical((size.height * 0.55) / 2, (size.height * 0.55) / 2+120),
            bottomLeft: Radius.elliptical((size.height * 0.55) / 2, (size.height * 0.55) / 2+120),
          ),
          gradient: LinearGradient(
            begin: FractionalOffset.bottomLeft,
            end: FractionalOffset.topRight,
            colors: <Color>[
              AppColors.pink.withValues(alpha: 0.7),
              AppColors.orange.withValues(alpha: 0.7),
            ],
          ),
        ),
      ).animate().scale(duration: Duration(milliseconds: 500)),
    ),
  ];
}
