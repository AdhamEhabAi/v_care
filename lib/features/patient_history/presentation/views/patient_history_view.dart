import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/patient_history_body.dart';

class PatientHistoryView extends StatefulWidget {
  const PatientHistoryView({super.key});

  @override
  _PatientHistoryViewState createState() => _PatientHistoryViewState();
}

class _PatientHistoryViewState extends State<PatientHistoryView> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _massController = TextEditingController();
  final TextEditingController _bloodController = TextEditingController();
  final TextEditingController _sigarController = TextEditingController();
  final TextEditingController _timeDiseaseController = TextEditingController();
  final TextEditingController _sharpDiseaseController = TextEditingController();
  final TextEditingController _currentDrugsController = TextEditingController();
  final TextEditingController _allergiesController = TextEditingController();


  @override
  void dispose() {
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFDFE0E0),
        appBar: AppBar(
          title: const Text(
            'سجل المريض',
            style: Styles.bold20,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Center(
            child: Text(
              'السابق',
              style: Styles.semiBold14.copyWith(color: const Color(0xFFBDBDBD)),
            ),
          ),
        ),
        body: PatientHistoryBody(
          allergiesController: _allergiesController,
          currentDrugsController: _currentDrugsController,
          sharpDiseaseController: _sharpDiseaseController,
          timeDiseaseController: _timeDiseaseController,
          heightController: _heightController,
          massController: _massController,
          bloodController: _bloodController,
          sigarController: _sigarController,
        ),
      ),
    );
  }
}
