import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/info_widget.dart';

class EditPatientSocialInfo extends StatelessWidget {
  const EditPatientSocialInfo({
    super.key,
    required TextEditingController heightController,
    required TextEditingController massController,
    required TextEditingController bloodController,
  }) : _heightController = heightController, _massController = massController, _bloodController = bloodController;

  final TextEditingController _heightController;
  final TextEditingController _massController;
  final TextEditingController _bloodController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.78),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20.0, horizontal: 12),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 10),
              child: Column(
                children: [
                  const Text(
                    'معلومات عامة',
                    style: Styles.bold16,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InfoWidget(
                    heightController: _heightController,
                    massController: _massController,
                    bloodController: _bloodController,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
