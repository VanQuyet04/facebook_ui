import 'package:facebook_ui/common/components/app_text.dart';
import 'package:facebook_ui/common/utils/res.dart';
import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../../common/utils/colors.dart';

class JoinFacebookScreen extends StatelessWidget {
  const JoinFacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Create account'), // Header
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImage(), // Content: Ảnh
            const SizedBox(height: 50),
            _buildTitle(), // Content: Tiêu đề
            const SizedBox(height: 10),
            _buildTextGroup(), // Content: Nhóm các dòng text
            const SizedBox(height: 40),
            _buildNextButton(), // Content: Nút tiếp theo
            const Spacer(),
            _buildFooter(), // Footer: Đường dẫn đến đăng nhập
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      Resource.imgJoinFb, // Đường dẫn đến ảnh của bạn
      width: 300,
      height: 250,
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Join Facebook!',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _buildTextGroup() {
    return const Column(
      children: [
        CustomText(
          title: 'We will help you',
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
        CustomText(
          title: 'create a new account in a few easy steps',
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _buildNextButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: CustomButton(
        text: 'Next',
        onPressed: () {
          // Thực hiện hành động khi bấm nút
        },
      ),
    );
  }

  Widget _buildFooter() {
    return const CustomText(
      title: 'Already have an account? Login',
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: AppColors.customBlue,
    );
  }
}
