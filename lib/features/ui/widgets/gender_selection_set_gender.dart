import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedGender; // Biến để lưu lựa chọn được chọn

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Male option
        _buildGenderOption('male', 'Male'),
        // Female option
        _buildGenderOption('female', 'Female'),
        // Custom option with extra description
        _buildGenderOption('custom', 'Custom'),
      ],
    );
  }

  // Widget cho từng tùy chọn
  Widget _buildGenderOption(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedGender = value;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Radio<String>(
                value: value,
                groupValue: selectedGender,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedGender = newValue;
                  });
                },
              ),
            ],
          ),
        ),
        // Hiển thị văn bản bổ sung khi chọn "custom"
        if (value == 'custom')
            const Text(
              "Select custom to choose another gender,\nor if you’d rather not say",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

        // Đường kẻ dưới cùng
        const Divider(color: Colors.grey),
      ],
    );
  }
}
