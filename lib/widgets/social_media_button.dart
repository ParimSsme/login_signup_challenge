import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaButton extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final String image;
  final double size;
  const SocialMediaButton({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.image,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcATop),
      ),
    ).animate().fade();
  }
}
