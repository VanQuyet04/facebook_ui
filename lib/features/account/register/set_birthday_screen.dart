import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../ui/widgets/widgets.dart';

class SetBirthDayScreen extends StatefulWidget {
  const SetBirthDayScreen({super.key});

  @override
  State<SetBirthDayScreen> createState() => _SetBirthDayScreenState();
}

class _SetBirthDayScreenState extends State<SetBirthDayScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Birthday'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Introduce(
              title: "What's your birthday",
              subtitle: "Choose your date of birth,",
              additionalText: "You can always make this private later.",
            ),
            const SizedBox(height: 50),
            // Sử dụng BirthdayPicker widget
            Center(
              child: BirthdayPicker(
                initialDate: selectedDate,
                onDateChanged: (DateTime newDate) {
                  setState(() {
                    selectedDate = newDate; // Cập nhật ngày được chọn
                  });
                },
              ),
            ),

            const SizedBox(height: 70),

            CustomButton(text: 'Next', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
