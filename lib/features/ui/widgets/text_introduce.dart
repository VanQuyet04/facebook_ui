import 'package:flutter/material.dart';

import '../../../common/utils/utils.dart';

class Introduce extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? additionalText;
  final bool? isTerm;

  const Introduce({
    super.key,
    required this.title,
    required this.subtitle,
    this.additionalText,
    this.isTerm,
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
          if (additionalText != null && isTerm!=true)
            Text(
              additionalText!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center, // Căn giữa văn bản
            ),
          if (isTerm == true && additionalText!=null)
            Center(
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black), // Màu mặc định
                  children: [
                    TextSpan(
                        text: "Terms, ",
                        style: TextStyle(color: AppColors.customBlue)),
                    TextSpan(
                        text: "Data Policy ",
                        style: TextStyle(color: AppColors.customBlue)),
                    TextSpan(text: "and ", style: TextStyle(color: Colors.black)),
                    // Màu mặc định
                    TextSpan(
                        text: "Cookies Policy",
                        style: TextStyle(color: AppColors.customBlue)),
                    TextSpan(text: ".", style: TextStyle(color: Colors.black)),
                    // Màu mặc định
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
