import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBackPressed; // Hàm để xử lý sự kiện khi nhấn nút quay lại

  const CustomAppBar({super.key,
    required this.title,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(title), // Tiêu đề
      leading: GestureDetector(
        onTap: onBackPressed ?? () => Navigator.pop(context), // Nếu không có hàm thì quay lại màn trước
        child: const Icon(CupertinoIcons.back), // Biểu tượng quay lại
      ),
    );
  }
}
