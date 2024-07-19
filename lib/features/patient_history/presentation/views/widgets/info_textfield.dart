import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';

class InfoTextField extends StatelessWidget {
  const InfoTextField({
    super.key,
    required TextEditingController heightController, required this.hintText, this.width = 176, this.textInputType = TextInputType.number,
  }) : textEditingController = heightController;

  final TextEditingController textEditingController;
  final String hintText;
  final double width;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 25,
      decoration: const BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Center(
        child: TextField(
          controller: textEditingController,
          style: Styles.semiBold9_25,
          keyboardType: textInputType,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Styles.semiBold10,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(bottom: 14.0), // Ensure this matches your font size
          ),
        ),
      ),
    );
  }
}
