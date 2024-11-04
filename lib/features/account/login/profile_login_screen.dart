import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/components/components.dart';
import '../../../common/utils/utils.dart';
import '../../ui/widgets/widgets.dart';

class ProfileLoginScreen extends StatelessWidget {
  const ProfileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoSection(),
            SizedBox(height: 80),
            MiddleSection(),
            BottomSection(),
          ],
        ),
      ),
    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          // Thêm khoảng cách phía trên logo
          child: Image.asset(
            Resource.imgLogo,
            width: 120,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          children: [
            UserProfileItem(
              imagePath: Resource.imgAvatar, // Đường dẫn đến ảnh avatar
              userName: 'Cristiano Ronaldo', // Tên người dùng
              onMenuTap: () {},
            ),
            // Avatar và tên
            const SizedBox(height: 20), // Khoảng cách giữa tên và item

            // Khối chứa các item với icon và text
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  IconTextRow(
                      imagePath: Resource.icAdd,
                      text: 'Log Into Another Account'),
                  SizedBox(height: 10), // Khoảng cách giữa các item
                  IconTextRow(
                      imagePath: Resource.icSearch, text: 'Find Your Account'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
      // Thêm khoảng cách cho nút bấm
      child: CustomButton(
        text: 'Create New Facebook Account',
        onPressed: () {},
      ),
    );
  }
}
