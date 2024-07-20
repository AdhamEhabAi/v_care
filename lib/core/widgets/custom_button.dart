import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backGroundColor = AppColors.primaryColor,
  });
  final Text text;
  final VoidCallback onPressed;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: text,
          )),
    );
  }
}
