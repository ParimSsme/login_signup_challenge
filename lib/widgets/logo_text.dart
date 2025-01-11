import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Text(
      'LOGO',
      style: textTheme.titleLarge?.copyWith(
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
