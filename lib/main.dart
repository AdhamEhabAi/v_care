import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:v_care/features/results/presentation/manager/result_cubit.dart';
import 'package:v_care/features/user_data_editing/presentation/views/edit_patient_info_view.dart';
import 'package:v_care/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ResultCubit(),)
      ],
      child: const MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar', 'AE'),
        ],
        debugShowCheckedModeBanner: false,
        home: EditPatientInfoView(),
      ),
    );
  }
}


