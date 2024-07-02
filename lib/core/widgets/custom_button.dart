import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, required this.onPressed, this.backGroundColor = AppColors.primaryColor,
  });
  final String text;
  final VoidCallback onPressed;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
          )),
    );
  }
}
