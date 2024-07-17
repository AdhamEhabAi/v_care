import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/results/presentation/manager/result_cubit.dart';

class CompleteOrNotWidget extends StatelessWidget {
  const CompleteOrNotWidget({
    super.key,
    required this.containerWidth,
    required this.isSelected,
    required this.halfWidth,
    required this.onSwitch,
  });

  final double containerWidth;
  final bool isSelected;
  final double halfWidth;
  final Function(bool) onSwitch;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: containerWidth,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.3),
            borderRadius: BorderRadius.circular(9.53),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'مكتملة',
                  style: Styles.bold22.copyWith(height: 3.4),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  'غير مكتملة',
                  textAlign: TextAlign.center,
                  style: Styles.bold22.copyWith(height: 3.4),
                ),
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          left: isSelected ? halfWidth - 10 : 0,
          top: 0,
          bottom: 0,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: halfWidth,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(9.53),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              BlocProvider.of<ResultCubit>(context).switchComplete();
              onSwitch(isSelected);
            },
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'مكتملة',
                      style: Styles.bold22.copyWith(
                        color: isSelected ? Colors.white : Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'غير مكتملة',
                      textAlign: TextAlign.center,
                      style: Styles.bold22.copyWith(
                        color: isSelected ? Colors.grey : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
