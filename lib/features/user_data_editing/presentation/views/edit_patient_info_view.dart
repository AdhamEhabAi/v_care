import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/widgets/custom_appbar.dart';
import 'package:v_care/features/user_data_editing/presentation/views/widgets/edit_patient_info_body.dart';

class EditPatientInfoView extends StatelessWidget {
  const EditPatientInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CustomAppBar(title: 'البيانات الشخصية', onPressed: () {}),
      body: const EditPatientInfoBody(),
    ));
  }
}

