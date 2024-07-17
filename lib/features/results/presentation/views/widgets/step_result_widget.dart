import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/core/widgets/splitter.dart';

class StepResultWidget extends StatelessWidget {
  const StepResultWidget({
    super.key, required this.stepNum, required this.stepHeaderText, required this.stepBody,
  });
  final String stepNum,stepHeaderText;
  final Widget stepBody;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(9.53),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0,vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          stepNum,
                          style: Styles.bold18.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Text(stepHeaderText,style: Styles.bold18.copyWith(color: AppColors.primaryColor),)
                  ],
                ),
                const Splitter(),
                stepBody
              ],
            ),
          ),
        ),
      ),
    );
  }
}
