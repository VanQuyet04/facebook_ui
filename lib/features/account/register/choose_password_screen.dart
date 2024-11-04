import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../ui/widgets/widgets.dart';

class ChoosePasswordScreen extends StatefulWidget {
  const ChoosePasswordScreen({super.key});

  @override
  State<ChoosePasswordScreen> createState() => _ChoosePasswordScreenState();
}

class _ChoosePasswordScreenState extends State<ChoosePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Mobile number'),
      body: SingleChildScrollView(
        // Thêm SingleChildScrollView
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Introduce(
              title: "Choose a password",
              subtitle: "Create a password at least with 6 chaeacters.\nIt should be something others couldn’t guess.",
            ),
            const SizedBox(height: 40),
            // Sử dụng GenderSelection widget
            const BottomBorderTextField(
              title: 'Password',
            ),
            const SizedBox(height: 60),
            CustomButton(
                text: 'Next',
                onPressed: () {
                  // Thực hiện hành động khi nhấn nút 'Next'
                }),
          ],
        ),
      ),
    );
  }
}
