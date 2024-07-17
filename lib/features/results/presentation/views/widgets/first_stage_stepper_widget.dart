import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/results/presentation/views/widgets/stepper_splitter.dart';

class FirstStageStepperWidget extends StatelessWidget {
  const FirstStageStepperWidget({
    super.key,
    this.splitterColor = Colors.white,
    this.textColor = Colors.white,

  });
  final Color splitterColor , textColor;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '4',
                    style: Styles.bold18.copyWith(color: Colors.white),
                  ),
                ),
              ),
               StepperSplitter(color: splitterColor),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '3',
                    style: Styles.bold18.copyWith(color: Colors.white),
                  ),
                ),
              ),
               StepperSplitter(color: splitterColor),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: Styles.bold18.copyWith(color: Colors.white),
                  ),
                ),
              ),
               StepperSplitter(color: splitterColor),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Image.asset(
                      'assets/images/loading.png',
                      width: 25,
                    )),
              ),
            ],
          ),
          const SizedBox(height: 6,),
          Row(
            children: [
              Text('نتيجة\n التحليل',style: Styles.semiBold14.copyWith(color: textColor),textAlign: TextAlign.center,),
              const Spacer(),
              Text('تم\n التحليل',style: Styles.semiBold14.copyWith(color: textColor),textAlign: TextAlign.center,),
              const Spacer(),
              Text('نتيجة\n الكشف',style: Styles.semiBold14.copyWith(color: textColor),textAlign: TextAlign.center,),
              const SizedBox(width: 5,),
              const Spacer(),
              const SizedBox(width: 2,),
              Text('تم\n الكشف',style: Styles.semiBold14.copyWith(color: textColor),textAlign: TextAlign.center,),
            ],
          ),
        ],
      ),
    );
  }
}