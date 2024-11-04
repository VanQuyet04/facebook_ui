import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scroll_datetime_picker/scroll_datetime_picker.dart';

class BirthdayPicker extends StatefulWidget {
  final DateTime initialDate;
  final ValueChanged<DateTime> onDateChanged;

  const BirthdayPicker({
    super.key,
    required this.initialDate,
    required this.onDateChanged,
  });

  @override
  State<BirthdayPicker> createState() => _BirthdayPickerState();
}

class _BirthdayPickerState extends State<BirthdayPicker> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }

  int get age {
    final now = DateTime.now();
    int age = now.year - selectedDate.year;

    // Nếu chưa đến sinh nhật trong năm nay, trừ 1
    if (now.month < selectedDate.month ||
        (now.month == selectedDate.month && now.day < selectedDate.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScrollDateTimePicker(
          itemExtent: 50.0,
          dateOption: DateTimePickerOption(
            dateFormat: DateFormat('dd MMMM y'),
            minDate: DateTime(2000, 1, 1),
            maxDate: DateTime(2024, 12, 31),
            initialDate: widget.initialDate,
          ),
          onChange: (DateTime datetime) {
            setState(() {
              selectedDate = datetime; // Cập nhật ngày được chọn
              widget.onDateChanged(datetime); // Gọi callback
            });
          },
          visibleItem: 3,
          infiniteScroll: true,
          style: DateTimePickerStyle(
            activeStyle: const TextStyle(
              fontSize: 18,
              letterSpacing: -0.5,
              color: Colors.black,
            ),
            inactiveStyle: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
            disabledStyle: TextStyle(
              fontSize: 18,
              color: Theme.of(context).disabledColor,
            ),
          ),
        ),
        const SizedBox(height: 40), // Khoảng cách giữa picker và text
        Text(
          "$age Years Old",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
