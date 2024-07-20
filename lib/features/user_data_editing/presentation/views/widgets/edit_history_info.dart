import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/info_textfield.dart';

class EditHistoryInfo extends StatelessWidget {
  const EditHistoryInfo({
    super.key,
    required this.timeDiseaseController,
    required this.sharpDiseaseController,
    required this.currentDrugsController,
    required this.allergiesController,
  });

  final TextEditingController timeDiseaseController;
  final TextEditingController sharpDiseaseController;
  final TextEditingController currentDrugsController;
  final TextEditingController allergiesController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color:  const Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(10.78),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 24,
          ),
          child: Column(
            children: [
              const Text(
                'السجل المرضي',
                style: Styles.bold16,
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ':الامراض المزمنة',
                    style: Styles.semiBold14,
                    textDirection: TextDirection.ltr,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InfoTextField(
                    heightController: timeDiseaseController,
                    hintText: 'لا يوجد',
                    width: MediaQuery.of(context).size.width,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    ':الامراض الحادة',
                    style: Styles.semiBold14,
                    textDirection: TextDirection.ltr,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InfoTextField(
                    heightController: sharpDiseaseController,
                    hintText: 'لا يوجد',
                    width: MediaQuery.of(context).size.width,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  const Text(
                    ':الادوية الحالية',
                    style: Styles.semiBold14,
                    textDirection: TextDirection.ltr,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InfoTextField(
                    heightController: currentDrugsController,
                    hintText: 'لا يوجد',
                    width: MediaQuery.of(context).size.width,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  const Text(
                    ':الحساسية',
                    style: Styles.semiBold14,
                    textDirection: TextDirection.ltr,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InfoTextField(
                    heightController: allergiesController,
                    hintText: 'لا يوجد',
                    width: MediaQuery.of(context).size.width,
                    textInputType: TextInputType.text,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
