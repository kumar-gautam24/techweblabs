import 'package:flutter/material.dart';

class DateTimeInputField extends StatefulWidget {
  final String labelText;
  final Function(DateTime) onDateTimeSelected;

  const DateTimeInputField({
    super.key,
    required this.labelText,
    required this.onDateTimeSelected,
  });

  @override
  State<DateTimeInputField> createState() => _DateTimeInputFieldState();
}

class _DateTimeInputFieldState extends State<DateTimeInputField> {
  DateTime? selectedDateTime;

  Future<void> _selectDateTime(BuildContext context) async {
    // Select Date
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      // Select Time
      final TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (selectedTime != null) {
        // Combine date and time
        final combinedDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          selectedTime.hour,
          selectedTime.minute,
        );

        setState(() {
          selectedDateTime = combinedDateTime;
        });

        widget.onDateTimeSelected(combinedDateTime);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () => _selectDateTime(context),
        ),
      ),
      controller: TextEditingController(
        text: selectedDateTime != null
            ? "${selectedDateTime!.toLocal()}".split('.')[0]
            : '',
      ),
    );
  }
}
