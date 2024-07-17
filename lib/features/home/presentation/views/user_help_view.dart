import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/home/presentation/views/widgets/user_header_container.dart';
import 'package:v_care/features/home/presentation/views/widgets/user_help_widget.dart';

class UserHelpView extends StatelessWidget {
  const UserHelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const UserHelpHeaderContainer(),
          const SizedBox(
            height: 27,
          ),
          const UserHelpWidget(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              text: 'البيانات الشخصية'),
          const UserHelpWidget(
              icon: Icon(
                Icons.book,
                size: 25,
              ),
              text: 'السجل المرضي'),
          UserHelpWidget(
            icon: const Icon(
              Icons.g_translate,
              size: 25,
            ),
            text: 'اللغة',
            suffix: Row(
              children: [
                Container(
                  width: 42,
                  // height: 25,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6))),
                  child: Text(
                    'EN',
                    textAlign: TextAlign.center,
                    style: Styles.bold16.copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  width: 42,
                  // height: 25,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6))),
                  child: const Text(
                    'AR',
                    textAlign: TextAlign.center,
                    style: Styles.bold16,
                  ),
                ),
              ],
            ),
          ),
          const UserHelpWidget(
              icon: Icon(
                Icons.call,
                size: 25,
              ),
              text: 'الدعم الفني'),
          const UserHelpWidget(
              icon: Icon(
                Icons.book,
                size: 25,
              ),
              text: 'الكشوفات'),
          const UserHelpWidget(
              icon: Icon(
                Icons.question_answer,
                size: 25,
              ),
              text: 'الاسئلة الشائعة'),
          const UserHelpWidget(
              icon: Icon(
                Icons.logout,
                size: 25,
              ),
              text: 'تسجيل الخروج'),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'الشروط والاحكام',
                  style: Styles.semiBold12_95.copyWith(color: Colors.grey,decoration: TextDecoration.underline),
                ),
                Text(
                  'سياسة الخصوصية',
                  style: Styles.semiBold12_95.copyWith(color: Colors.grey,decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),

        ],
      ),
    ));
  }
}
