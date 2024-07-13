import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  const TitleField(this.titleController, {super.key});

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: titleController,
      maxLength: 50,
      decoration: const InputDecoration(
        label: Text('Title'),
      ),
    );
  }
}
