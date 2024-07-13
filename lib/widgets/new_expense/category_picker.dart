import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class CategoryPicker extends StatelessWidget {
  const CategoryPicker(this.selectedCategory, this.onPickCategory, {super.key});

  final Category selectedCategory;
  final void Function(Category) onPickCategory;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: selectedCategory,
        items: Category.values
            .map(
              (category) => DropdownMenuItem(
                value: category,
                child: Text(
                  category.name.toUpperCase(),
                ),
              ),
            )
            .toList(),
        onChanged: (value) {
          if (value == null) {
            return;
          }
          onPickCategory(value);
        });
  }
}
