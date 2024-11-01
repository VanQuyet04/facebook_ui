import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/gradient.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        gradient: AppColors.blueGradient,
        borderRadius: BorderRadius.circular(17),
      ),
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        borderRadius: BorderRadius.circular(17),
        color: Colors.transparent, // Để cho màu gradient hiển thị
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
