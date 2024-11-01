import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget {
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
      padding: const EdgeInsets.only(bottom: 8.0), // Khoảng cách dưới app bar
      child: SizedBox(
        height: 60, // Thay đổi chiều cao ở đây
        child: CupertinoNavigationBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
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
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
