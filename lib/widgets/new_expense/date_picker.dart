import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

List<Widget> datePicker(
        DateTime? selectedDate, void Function() presentDatePicker) =>
    [
      Text(
        selectedDate == null
            ? 'No date selected'
            : dateFormatter.format(selectedDate),
      ),
      IconButton(
        onPressed: presentDatePicker,
        icon: const Icon(Icons.calendar_month),
      )
    ];
