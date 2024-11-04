import 'package:flutter/cupertino.dart';

class TermsInfoText extends StatelessWidget {
  const TermsInfoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CenterText(
              "The Facebook company is now Meta. While our company name"),
          CenterText(
              "is changing, we are continuing to offer the same products,"),
          CenterText(
              "including the Facebook app from Meta. Our Data Policy and"),
          CenterText(
              "Terms of Service remain in effect, and this name change does"),
          CenterText(
              "not affect how we use or share data. Learn more about Meta and"),
          CenterText("our vision for the metaverse."),
        ],
      ),
    );
  }
}

class CenterText extends StatelessWidget {
  final String text;

  const CenterText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 13,color: Color(0xFF000000)), // Kích thước chữ 13
    );
  }
}
