import 'package:flutter/material.dart';
import '../../../common/components/components.dart';
import '../../../common/utils/colors.dart';
import '../../ui/widgets/widgets.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Mobile number'),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Introduce(
                    title: "Finishing signing up",
                    subtitle: "By tapping Sign up, you agree to our",
                    additionalText: "Terms, Data Policy and Cookies Policy",
                    isTerm: true,
                  ),
                  const SizedBox(height: 40),
                  const BottomBorderTextField(
                    title: 'Password',
                  ),
                  const SizedBox(height: 60),
                  CustomButton(
                    text: 'Sign Up',
                    onPressed: () {
                      // Thực hiện hành động khi nhấn nút 'Sign Up'
                    },
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Sign up without updating my contact",
                      style: TextStyle(color: AppColors.customBlue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Center(child: TermsInfoText()),
        ],
      ),
    );
  }
}
