import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/info_textfield.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.heightController,
    required this.massController,
    required this.bloodController,
  });

  final TextEditingController heightController;
  final TextEditingController massController;
  final TextEditingController bloodController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ':الطول',
              style: Styles.semiBold14,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 15),
            Text(
              ':الوزن',
              style: Styles.semiBold14,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 15),
            Text(
              ':فصيلة الدم',
              style: Styles.semiBold14,
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
        Column(
          children: [
            InfoTextField(heightController: heightController, hintText: 'cm'),
            const SizedBox(height: 10),
            InfoTextField(heightController: massController, hintText: 'kg'),
            const SizedBox(height: 10),
            InfoTextField(heightController: bloodController, hintText: '',textInputType: TextInputType.text),
          ],
        ),
      ],
    );
  }
}
