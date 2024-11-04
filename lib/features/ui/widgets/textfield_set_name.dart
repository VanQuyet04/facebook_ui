import 'package:flutter/material.dart';

class NameFields extends StatefulWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  const NameFields({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
  });

  @override
  State<NameFields> createState() => _NameFieldsState();
}

class _NameFieldsState extends State<NameFields> {
  bool _isFirstNameEmpty = true;
  bool _isLastNameEmpty = true;

  @override
  void initState() {
    super.initState();

    // Theo dõi sự thay đổi trong trường First Name
    widget.firstNameController.addListener(() {
      setState(() {
        _isFirstNameEmpty = widget.firstNameController.text.isEmpty;
      });
    });

    // Theo dõi sự thay đổi trong trường Last Name
    widget.lastNameController.addListener(() {
      setState(() {
        _isLastNameEmpty = widget.lastNameController.text.isEmpty;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: widget.firstNameController,
            decoration: InputDecoration(
              labelText: 'First Name',
              suffixIcon: !_isFirstNameEmpty
                  ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  widget.firstNameController.clear();
                },
              )
                  : null,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: widget.lastNameController,
            decoration: InputDecoration(
              labelText: 'Last Name',
              suffixIcon: !_isLastNameEmpty
                  ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  widget.lastNameController.clear();
                },
              )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
