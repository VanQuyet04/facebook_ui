import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../ui/widgets/widgets.dart';

class SetGenderScreen extends StatefulWidget {
  const SetGenderScreen({super.key});

  @override
  State<SetGenderScreen> createState() => _SetGenderScreenState();
}

class _SetGenderScreenState extends State<SetGenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Gender'),
      body: SingleChildScrollView( // Thêm SingleChildScrollView
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Introduce(
              title: "What's your gender",
              subtitle:
              "You can change who sees your gender on your profile later.",
            ),
            const SizedBox(height: 50),
            // Sử dụng GenderSelection widget
            const Center(
              child: GenderSelection(),
            ),
            const SizedBox(height: 70),
            CustomButton(text: 'Next', onPressed: () {
              // Thực hiện hành động khi nhấn nút 'Next'
            }),
          ],
        ),
      ),
    );
  }
}
