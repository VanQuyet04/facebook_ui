import 'package:facebook_ui/common/components/components.dart';
import 'package:flutter/material.dart';

class SetBirthDayScreen extends StatefulWidget {
  const SetBirthDayScreen({super.key});

  @override
  State<SetBirthDayScreen> createState() => _SetBirthDayScreenState();
}

class _SetBirthDayScreenState extends State<SetBirthDayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Birthday'), // Thêm AppBar nếu cần
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "What's your birthday",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Choose your date of birth",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Text(
                    "You can always make this private later.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Sử dụng Row để chứa hai TextField cùng một hàng
            const SizedBox(height: 60),
            CustomButton(
              text: 'Next',
              onPressed: () {},
            ),

          ],
        ),
      ),
    );
  }
}
