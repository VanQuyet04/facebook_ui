import 'package:facebook_ui/common/components/textfield_custom.dart';
import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../ui/widgets/widgets.dart';

class SetContactScreen extends StatefulWidget {
  const SetContactScreen({super.key});

  @override
  State<SetContactScreen> createState() => _SetContactScreenState();
}

class _SetContactScreenState extends State<SetContactScreen> {
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
              title: "Enter your mobile number",
              subtitle: "Enter the mobile number where you can be reached.",
              additionalText: "No one else will see this on your profile",
            ),
            const SizedBox(height: 40),
            // Sử dụng GenderSelection widget
            const BottomBorderTextField(
              title: 'Mobile number',
              isNumber: true,
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
