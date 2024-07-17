import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_button.dart';
import 'package:v_care/features/authentication/presentation/views/widgets/complete_register_form.dart';

class CompleteRegister extends StatelessWidget {
  const CompleteRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/Logo.png',
                  color: Colors.black, height: 20),
            ),
          ],
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.padding),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 60,),
                  Column(
                    children: [
                      const Text('اكمل حسابك التعريفي',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),),
                      Text(
                        'خطوتك الاخيرة للاستمتاع بالتطبيق',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 47,),
                  const CompleteRegisterForm(),
                  const SizedBox(height: 75,),
                  CustomButton(text: const Text('استمرار',style: Styles.bold14_8,), onPressed: (){}),
                ],
              ),
            ),
          ),
        ),
      
      ),
    );
  }
}


