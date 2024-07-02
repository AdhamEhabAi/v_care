import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.controller,
      this.validator,
      super.key,
      this.hintText,
      this.prefix,
      this.suffix,
      this.labelText,
      this.onChanged,
      this.obsecureText = false,
      this.textInputType});
  String? labelText;
  String? hintText;
  FormFieldValidator<String>? validator;
  Function(String)? onChanged;
  Widget? prefix;
  Widget? suffix;
  bool obsecureText;
  TextEditingController? controller = TextEditingController();
  TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     blurRadius: 7,
        //   ),
        // ],
      ),
      child: TextFormField(
        validator: validator,
        onChanged: onChanged,
        keyboardType: textInputType,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.primaryColor),
          prefixIcon: prefix,
          prefixIconColor: AppColors.primaryColor,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
