import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_button.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 65,
        height: 65,
        textStyle: const TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.transparent),
        ));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/Logo.png',
                  color: Colors.black, height: 20),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppPadding.padding),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      'أدخل رمز OTP',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    const Text(
                      'أدخل الرمز الذي تم ارساله على رقم الهاتف',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: AppColors.primaryColor),
                        ),
                      ),
                      onCompleted: (pin) => print(pin),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'لم استلم رمز ؟ اعد الارسال',
                      style: TextStyle(
                        fontSize: 22,
                        decoration: TextDecoration.underline,
                        color: Colors.black.withOpacity(.4),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomButton(
                      text: const Text('تأكيد الرمز',style: Styles.bold14_8,),
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 2.2,
                              decoration: const BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(70),
                                  topRight: Radius.circular(70),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Column(
                                    children: [
                                      Text(
                                        'تم التاكيد الهاتف',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                      Text(
                                        'الان يمكنك الاستمتاع بخدماتنا',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 53,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 50,
                                        child: Icon(
                                          Icons.check,
                                          size: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                        horizontal: AppPadding.padding),
                                    child: CustomButton(
                                      text: const Text('ابدا الان',style: Styles.bold14_8,),

                                      textColor: AppColors.primaryColor,
                                      onPressed: () {},
                                      backGroundColor: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
