import 'package:flutter/material.dart';

class SortWidget extends StatelessWidget {
  const SortWidget({
    super.key, required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(7.6),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: widget,
          ),
        ),
      ),
    );
  }
}