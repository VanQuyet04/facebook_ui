import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileItem extends StatelessWidget {
  final String imagePath;
  final String userName;
  final VoidCallback onMenuTap;

  const UserProfileItem({
    super.key,
    required this.imagePath,
    required this.userName,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Avatar với thông báo
        Stack(
          clipBehavior: Clip.none, // Để biểu tượng không bị cắt
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 60,
                height: 60,
              ),
            ),
            // Biểu tượng thông báo
            Positioned(
              right: -5,
              top: -10,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red, // Màu nền cho vòng tròn
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1
                  )
                ),
                child: const Text(
                  '8',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        // Tên
        Expanded(
          child: Text(
            userName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
        ),

        GestureDetector(
          onTap: onMenuTap,
          child: const Icon(
            CupertinoIcons.ellipsis_vertical,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
