import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_check_box.dart';

class YesOrNoWidget extends StatefulWidget {
  const YesOrNoWidget({
    super.key,
    required this.text,
    this.isYes = false,
  });

  final String text;
  final bool isYes;

  @override
  _YesOrNoWidgetState createState() => _YesOrNoWidgetState();
}

class _YesOrNoWidgetState extends State<YesOrNoWidget> {
  bool isYesChecked = false;
  bool isNoChecked = false;

  @override
  void initState() {
    super.initState();
    isYesChecked = widget.isYes;
    isNoChecked = widget.isYes;
  }

  void _onYesChanged(bool value) {
    setState(() {
      isYesChecked = value;
      if (value) {
        isNoChecked = false;
      }
    });
  }

  void _onNoChanged(bool value) {
    setState(() {
      isNoChecked = value;
      if (value) {
        isYesChecked = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: Styles.semiBold14,
          textDirection: TextDirection.ltr,
        ),
        Row(
          children: [
            CustomCheckBox(
              text: 'نعم',
              isChecked: isYesChecked,
              onChanged: _onYesChanged,
            ),
            CustomCheckBox(
              text: 'لا',
              isChecked: isNoChecked,
              onChanged: _onNoChanged,
            ),
          ],
        ),
      ],
    );
  }
}
