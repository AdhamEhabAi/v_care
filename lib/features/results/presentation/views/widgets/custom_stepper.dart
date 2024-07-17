import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_care/features/results/presentation/manager/result_cubit.dart';
import 'package:v_care/features/results/presentation/views/widgets/completed_order.dart';
import 'package:v_care/features/results/presentation/views/widgets/first_stage_stepper_widget.dart';
import 'package:v_care/features/results/presentation/views/widgets/fourth_stage_stepper_widget.dart';
import 'package:v_care/features/results/presentation/views/widgets/second_stage_stepper_widget.dart';
import 'package:v_care/features/results/presentation/views/widgets/third_stage_stepper_widget.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper(
      {super.key,
      required this.stageNum,
      this.splitterColor = Colors.white,
      this.textColor = Colors.white});
  final int stageNum;
  final Color splitterColor, textColor;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultCubit, ResultState>(
      builder: (context, state) {
        if (stageNum == 1) {
          return FirstStageStepperWidget(
            splitterColor: splitterColor,
            textColor: textColor,
          );
        } else if (stageNum == 2) {
          return SecondStageStepperWidget(
            splitterColor: splitterColor,
            textColor: textColor,
          );
        } else if (stageNum == 3) {
          return ThirdStageStepperWidget(
            splitterColor: splitterColor,
            textColor: textColor,
          );
        } else if (stageNum == 4) {
          return FourthStageStepperWidget(
            splitterColor: splitterColor,
            textColor: textColor,
          );
        } else {
          return CompletedOrder(textColor: textColor,splitterColor: splitterColor,);
        }
      },
    );
  }
}
