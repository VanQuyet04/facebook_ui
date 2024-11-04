import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../../common/utils/utils.dart';
import '../../ui/widgets/widgets.dart';

class ForgotPasswordPhoneScreen extends StatefulWidget {
  const ForgotPasswordPhoneScreen({super.key});

  @override
  State<ForgotPasswordPhoneScreen> createState() =>
      _ForgotPasswordPhoneScreenState();
}

class _ForgotPasswordPhoneScreenState extends State<ForgotPasswordPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Find your account'),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Introduce(
                    title: "Enter your phone number",
                  ),
                  const SizedBox(height: 20),
                  const BottomBorderTextField(
                    title: 'Enter..',
                    isNumber: true,
                  ),
                  const SizedBox(height: 60),
                  CustomButton(
                    text: 'Find Your Account',
                    onPressed: () {
                      // Thực hiện hành động khi nhấn nút 'Find Your Account'
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          // Text dưới chân trang
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Search by email sted',
              style: TextStyle(color: AppColors.customBlue), // Sử dụng màu tùy chỉnh
              textAlign: TextAlign.center, // Căn giữa
            ),
          ),
        ],
      ),
    );
  }
}
