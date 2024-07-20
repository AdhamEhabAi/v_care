import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_button.dart';
import 'package:v_care/features/user_data_editing/presentation/views/widgets/daily_life_info.dart';
import 'package:v_care/features/user_data_editing/presentation/views/widgets/edit_history_info.dart';
import 'package:v_care/features/user_data_editing/presentation/views/widgets/edit_patient_social_info.dart';

class EditPatientInfoContainer extends StatelessWidget {
  const EditPatientInfoContainer({
    required TextEditingController heightController,
    required TextEditingController massController,
    required TextEditingController bloodController,
    super.key,
    required this.sigarController,
    required this.alcoholController,
    required this.drugsController, required this.timeDiseaseController, required this.sharpDiseaseController, required this.currentDrugsController, required this.allergiesController,
  })  : _heightController = heightController,
        _massController = massController,
        _bloodController = bloodController;

  final TextEditingController _heightController;
  final TextEditingController _massController;
  final TextEditingController _bloodController;
  final TextEditingController sigarController;
  final TextEditingController alcoholController;
  final TextEditingController drugsController;


  final TextEditingController timeDiseaseController;
  final TextEditingController sharpDiseaseController;
  final TextEditingController currentDrugsController;
  final TextEditingController allergiesController;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  EditPatientSocialInfo(heightController: _heightController, massController: _massController, bloodController: _bloodController),
                  DailyLifeInfo(sigarController: sigarController, alcoholController: alcoholController, drugsController: drugsController),
                  const SizedBox(height: 20,),
                  EditHistoryInfo(timeDiseaseController: timeDiseaseController, sharpDiseaseController: sharpDiseaseController, currentDrugsController: currentDrugsController, allergiesController: allergiesController),
                ],
              ),
            ),
            Positioned(
                top: -12,
                right: 24,
                child: Container(
                  width: 100,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'السجل المرضي',
                      style: Styles.bold14,
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(height: 12,),
        CustomButton(text: Text('تعديل البيانات',style: Styles.bold20.copyWith(color: Colors.white),), onPressed: (){})
      ],
    );
  }
}



