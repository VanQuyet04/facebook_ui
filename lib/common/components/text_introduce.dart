import 'package:flutter/material.dart';

class Introduce extends StatelessWidget {
  final String title;
  final String subtitle;
  final String additionalText;

  const Introduce({
    super.key,
    required this.title,
    required this.subtitle,
    required this.additionalText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center, // Căn giữa văn bản
          ),
          Text(
            additionalText,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center, // Căn giữa văn bản
          ),
        ],
      ),
    );
  }
}
