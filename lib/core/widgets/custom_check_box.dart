import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.text,
    required this.onChanged,
  });

  final bool isChecked;
  final String text;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            onChanged(value!);
          },
        ),

      ],
    );
  }
}
