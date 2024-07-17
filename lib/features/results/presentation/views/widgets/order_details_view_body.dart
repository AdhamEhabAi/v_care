import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_button.dart';
import 'package:v_care/features/results/presentation/views/widgets/custom_stepper.dart';
import 'package:v_care/features/results/presentation/views/widgets/step_result_widget.dart';

class OrderDetailsViewBody extends StatelessWidget {
  const OrderDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'رقم الطلب #215625',
              style: Styles.bold18,
            ),
            const SizedBox(
                child: CustomStepper(
              stageNum: 5,
              splitterColor: AppColors.primaryColor,
              textColor: AppColors.primaryColor,
            )),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'تاريخ الكشف',
                  style: Styles.semiBold16,
                ),
                Text(
                  '22 DEC , 10:49 AM',
                  textDirection: TextDirection.ltr,
                  style: Styles.semiBold16,
                ),
              ],
            ),
            StepResultWidget(
              stepNum: '1',
              stepHeaderText: 'تم الكشف',
              stepBody: Center(
                  child: Text(
                'برجاء انتظار نتيجة الكشف\n ومتابعة النتائج لاحقا',
                style: Styles.semiBold18.copyWith(color: Colors.white),
              )),
            ),
            StepResultWidget(
              stepNum: '2',
              stepHeaderText: 'نتيجة الكشف',
              stepBody: Center(
                  child: Column(
                children: [
                  Text(
                    'النتيجة',
                    style: Styles.bold18.copyWith(color: AppColors.primaryColor),
                  ),
                  Text(
                    'يرجي اجراء تحليل',
                    style: Styles.semiBold16.copyWith(color: Colors.white),
                  ),
                  const Text(
                    'HEMOGLOBIN',
                    style: Styles.semiBold16,
                  ),
                  Text(
                    'لمتابعة الاجراءات',
                    style: Styles.semiBold16.copyWith(color: Colors.white),
                  ),
                  CustomButton(
                      text: Text(
                        'رفع التحليل',
                        style: Styles.bold14_8.copyWith(color: Colors.white),
                      ),
                      onPressed: () {}),
                ],
              )),
            ),
            StepResultWidget(
              stepNum: '3',
              stepHeaderText: 'تم التحليل',
              stepBody: Center(
                  child: Text(
                    'برجاء انتظار نتيجة التحليل\n ومتابعة النتائج لاحقا',
                    style: Styles.semiBold18.copyWith(color: Colors.white),
                  )),
            ),
            StepResultWidget(
              stepNum: '4',
              stepHeaderText: 'نتيجة التحليل',
              stepBody: Center(
                  child: Column(
                    children: [
                      Text(
                        'النتيجة',
                        style: Styles.bold18.copyWith(color: AppColors.primaryColor),
                      ),
                      Text(
                        'لديك اعراض لمرض',
                        style: Styles.semiBold16.copyWith(color: Colors.white),
                      ),
                      const Text(
                        'DIABETES DISEASE',
                        style: Styles.semiBold16,
                      ),
                    ],
                  )),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
