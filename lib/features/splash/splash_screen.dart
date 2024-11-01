import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: LogoSection(), // Phần logo và tên ứng dụng
              ),
            ),
            FooterSection(), // Phần dưới cùng với "From" và icon Meta
            SizedBox(height: 20), // Khoảng cách dưới cùng của màn hình
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Resource.imgLogo, // Đường dẫn đến ảnh logo
          width: 110.0,
          height: 100.0,
        ),
        const SizedBox(height: 10),
        // Khoảng cách giữa logo và tên ứng dụng
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return AppColors.blueGradient.createShader(bounds);
          },
          child: const Text(
            'facebook',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'From',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 5), // Khoảng cách giữa Text và Icon
          Image.asset(
            Resource.icMeta, // Đường dẫn đến ảnh logo
            width: 70.0,
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
