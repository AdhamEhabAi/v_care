import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_button.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/info_textfield.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/info_widget.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/yes_or_no_widget.dart';

class PatientHistoryBody extends StatelessWidget {
  const PatientHistoryBody({
    super.key,
    required TextEditingController heightController,
    required TextEditingController massController,
    required TextEditingController bloodController,
    required TextEditingController sigarController,
    required TextEditingController timeDiseaseController,
    required TextEditingController currentDrugsController,
    required TextEditingController allergiesController,

    required TextEditingController sharpDiseaseController,
  })  : _heightController = heightController,
        _massController = massController,
        _bloodController = bloodController,
        _sigarController = sigarController,
        _sharpDiseaseController = sharpDiseaseController,
        _currentDrugsController = currentDrugsController,
        _allergiesController = allergiesController,


      _timeDiseaseController = timeDiseaseController;

  final TextEditingController _heightController;
  final TextEditingController _massController;
  final TextEditingController _bloodController;
  final TextEditingController _sigarController;
  final TextEditingController _timeDiseaseController;
  final TextEditingController _sharpDiseaseController;
  final TextEditingController _currentDrugsController;
  final TextEditingController _allergiesController;




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.78),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
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
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.78),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24),
                child: Column(
                  children: [
                    const Text(
                      'نمط الحياة',
                      style: Styles.bold16,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const YesOrNoWidget(
                      text: ':التدخين',
                    ),
                    InfoTextField(
                      heightController: _sigarController,
                      hintText: 'اذكر العدد / اليوم ان وجد',
                      width: MediaQuery.of(context).size.width,
                    ),
                    const YesOrNoWidget(
                      text: ':استهلاك الكحوليات',
                    ),
                    const YesOrNoWidget(
                      text: ':المخدرات',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
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
                          heightController: _timeDiseaseController,
                          hintText: 'اذكر الامراض المزمنة ان وجدت',
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
                          heightController: _sharpDiseaseController,
                          hintText: 'اذكر الامراض الحادة ان وجدت',
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
                          heightController: _currentDrugsController,
                          hintText: ' اذكر الادوية الحالية ان وجدت مع ذكر الجرعه',
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
                          heightController: _allergiesController,
                          hintText: ' اذكر الحساسية ان وجدت',
                          width: MediaQuery.of(context).size.width,
                          textInputType: TextInputType.text,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(text: Text('استمرار',style: Styles.bold16.copyWith(color: Colors.white),), onPressed: (){},),

          ],
        ),
      ),
    );
  }
}
