import 'package:flutter/material.dart';

class BottomBorderTextField extends StatefulWidget {
  final String title;
  final bool? isNumber;

  const BottomBorderTextField({super.key, required this.title, this.isNumber});

  @override
  State<BottomBorderTextField> createState() => _BottomBorderTextFieldState();
}

class _BottomBorderTextFieldState extends State<BottomBorderTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateSuffixIcon);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateSuffixIcon);
    _controller.dispose();
    super.dispose();
  }

  void _updateSuffixIcon() {
    setState(() {}); // Cập nhật UI khi nội dung thay đổi
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType:
          widget.isNumber == true ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        labelText: widget.title,
        // Sử dụng title truyền vào
        labelStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        suffixIcon: _controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                },
              )
            : null,
      ),
    );
  }
}
