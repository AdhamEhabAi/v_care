import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';

class UserHelpWidget extends StatelessWidget {
  const UserHelpWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,this.suffix = const Icon(Icons.arrow_forward_ios_sharp) ,
  });
  final Widget icon;
  final String text;
  final VoidCallback? onTap;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left:  14,right: 14,bottom: 27),
        child: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    icon,
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      text,
                      style: Styles.bold16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: suffix,
              )
            ],
          ),
        ),
      ),
    );
  }
}
