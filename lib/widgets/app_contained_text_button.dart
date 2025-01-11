import 'package:flutter/material.dart';

class AppContainedTextButton extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final VoidCallback onPressed;

  const AppContainedTextButton({
    super.key,
    required this.text,
    required this.gradient,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 230,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(20.0),
        ),
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 24.0),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
