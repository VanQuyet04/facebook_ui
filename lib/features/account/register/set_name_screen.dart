import 'package:facebook_ui/common/components/components.dart';
import 'package:flutter/material.dart';

class SetNameScreen extends StatefulWidget {
  const SetNameScreen({super.key});

  @override
  State<SetNameScreen> createState() => _SetNameScreenState();
}

class _SetNameScreenState extends State<SetNameScreen> {

  final TextEditingController firstNameController = TextEditingController(); // Controller cho tên
  final TextEditingController lastNameController = TextEditingController(); // Controller cho họ
  bool _isFirstNameEmpty = true; // Biến theo dõi trạng thái của trường First Name
  bool _isLastNameEmpty = true; // Biến theo dõi trạng thái của trường Last Name

  @override
  void initState() {
    super.initState();

    // Theo dõi sự thay đổi trong trường First Name
    firstNameController.addListener(() {
      setState(() {
        _isFirstNameEmpty = firstNameController.text.isEmpty; // Cập nhật trạng thái
      });
    });

    // Theo dõi sự thay đổi trong trường Last Name
    lastNameController.addListener(() {
      setState(() {
        _isLastNameEmpty = lastNameController.text.isEmpty; // Cập nhật trạng thái
      });
    });
  }

  @override
  void dispose() {
    firstNameController.dispose(); // Giải phóng controller
    lastNameController.dispose(); // Giải phóng controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Create account'), // Thêm AppBar nếu cần
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  Text(
                    "What's Your Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Enter the name you use in real life",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Sử dụng Row để chứa hai TextField cùng một hàng
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      suffixIcon: !_isFirstNameEmpty // Hiển thị icon xóa nếu không trống
                          ? IconButton(
                        icon: const Icon(Icons.clear), // Biểu tượng xóa
                        onPressed: () {
                          firstNameController.clear(); // Xóa nội dung
                        },
                      )
                          : null,
                      border: UnderlineInputBorder( // Thêm viền dưới
                        borderSide: BorderSide(color: Colors.grey.shade400), // Màu viền
                      ),
                      focusedBorder: const UnderlineInputBorder( // Viền dưới khi trường được chọn
                        borderSide: BorderSide(color: Colors.blue), // Màu viền khi chọn
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0), // Padding nội dung
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Khoảng cách giữa hai TextField
                Expanded(
                  child: TextField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      suffixIcon: !_isLastNameEmpty // Hiển thị icon xóa nếu không trống
                          ? IconButton(
                        icon: const Icon(Icons.clear), // Biểu tượng xóa
                        onPressed: () {
                          lastNameController.clear(); // Xóa nội dung
                        },
                      )
                          : null,
                      border: UnderlineInputBorder( // Thêm viền dưới
                        borderSide: BorderSide(color: Colors.grey.shade400), // Màu viền
                      ),
                      focusedBorder: const UnderlineInputBorder( // Viền dưới khi trường được chọn
                        borderSide: BorderSide(color: Colors.blue), // Màu viền khi chọn
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0), // Padding nội dung
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),

            CustomButton(text: 'Next', onPressed: () {},)
          ],
        ),
      ),
    );
  }
}
