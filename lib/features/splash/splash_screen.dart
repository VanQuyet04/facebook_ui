import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/common/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            // Logo và tên ứng dụng căn giữa
            Center(
              child: Column(
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
                        color: Colors
                            .white,
                        decoration: TextDecoration.none
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // Text và Icon ở dưới cùng của màn hình, căn giữa
            Center(
              child: Column(
                children: [
                  const Text(
                    'From',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
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
            ),
            const SizedBox(height: 20), // Khoảng cách dưới cùng của màn hình
          ],
        ),
      ),
    );
  }
}
