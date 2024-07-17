import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/custom_button.dart';
import 'package:v_care/features/results/presentation/views/widgets/custom_stepper.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key, required this.stageNumber, required this.onTap,
  });
  final int stageNumber;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 29.0, vertical: 11.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(9.53),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.newspaper),
                  Text(
                    'رقم الطلب #215625',
                    style: Styles.bold18,
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تاريخ الكشف',
                    style: Styles.semiBold16
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '22 DEC , 10:49 AM',
                    style: Styles.semiBold16
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),

              SizedBox(
                  child: CustomStepper(
                    stageNum: stageNumber,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: CustomButton(
                    text: const Text('التفاصيل',style: Styles.bold14_8,),
                    onPressed: onTap,
                    backGroundColor: Colors.greenAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
