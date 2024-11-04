import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../ui/widgets/widgets.dart';

class SetNameScreen extends StatefulWidget {
  const SetNameScreen({super.key});

  @override
  State<SetNameScreen> createState() => _SetNameScreenState();
}

class _SetNameScreenState extends State<SetNameScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Create account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Introduce(
              title: "What's your name",
              subtitle: "Enter the name you use in real life.",
            ),
            const SizedBox(height: 40),
            NameFields(
              firstNameController: firstNameController,
              lastNameController: lastNameController,
            ),
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
