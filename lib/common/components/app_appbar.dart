import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10), // Khoảng cách dưới app bar
      child: SizedBox(
        height: 100, // Thay đổi chiều cao ở đây
        child: CupertinoNavigationBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical:0),
            child: GestureDetector(
              onTap: onBackPressed ?? () => Navigator.pop(context),
              child: const Icon(CupertinoIcons.back),
            ),
          ),
          middle: Row(
            children: [
              const SizedBox(width: 8), // Khoảng cách giữa icon và tiêu đề
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60); // Kích thước mặc định của AppBar
}
