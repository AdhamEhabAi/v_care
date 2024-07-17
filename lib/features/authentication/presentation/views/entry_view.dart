import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_button.dart';

class EntryView extends StatelessWidget {
  const EntryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(AppPadding.padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                                'assets/images/Logo.png',
                                color: Colors.black,
                              ),
                ),
              ),
              Column(
                children: [
                  CustomButton(text: const Text('تسجيل الدخول',style: Styles.bold14_8,),  onPressed: () { },backGroundColor: Colors.blueGrey,),
                  const SizedBox(height: 20,),
                  CustomButton(text: const Text('مستخدم جديد',style: Styles.bold14_8,), onPressed: () { },backGroundColor: Colors.blueGrey,),
                  const SizedBox(height: 20,),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

