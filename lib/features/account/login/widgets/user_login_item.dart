import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileItem extends StatelessWidget {
  final String imagePath; // Đường dẫn đến ảnh avatar
  final String userName; // Tên người dùng
  final VoidCallback onMenuTap; // Callback khi bấm vào menu ba chấm

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
        // Avatar
        ClipRRect(
          borderRadius: BorderRadius.circular(15), // Bo góc 15
          child: Image.asset(
            imagePath, // Đường dẫn đến ảnh từ assets
            width: 60, // Đặt chiều rộng
            height: 60, // Đặt chiều cao
            fit: BoxFit.cover, // Đảm bảo ảnh vừa với khung và giữ tỷ lệ
          ),
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
        // Menu ba chấm
        GestureDetector(
          onTap: onMenuTap, // Thực hiện hành động khi bấm vào menu ba chấm
          child: const Icon(
            CupertinoIcons.ellipsis_vertical,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
