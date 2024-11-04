import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  final String imagePath;
  final String text;

  const IconTextRow({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 24,
          width: 24,
        ),
        const SizedBox(width: 20),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF0065FD),
            fontSize: 14,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
