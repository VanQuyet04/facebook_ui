import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title; // Nội dung văn bản
  final double fontSize; // Kích thước font chữ
  final FontWeight fontWeight; // Kiểu độ đậm của font chữ
  final Color color; // Màu chữ

  const CustomText({
    super.key,
    required this.title,
    required this.fontSize,
    required this.fontWeight,
    required this.color // Mặc định màu chữ là đen
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: TextDecoration.none, // Không có gạch chân
      ),
    );
  }
}
