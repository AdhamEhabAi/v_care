import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backGroundColor = AppColors.primaryColor,
    this.textColor = Colors.white,
  });
  final Text text;
  final VoidCallback onPressed;
  final Color backGroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: 54,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.15))),
          child: text),
    );
  }
}
