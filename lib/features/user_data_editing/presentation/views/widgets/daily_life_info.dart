import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/patient_history/presentation/views/widgets/info_textfield.dart';

class DailyLifeInfo extends StatelessWidget {
  const DailyLifeInfo({
    super.key,
    required this.sigarController,
    required this.alcoholController,
    required this.drugsController,
  });

  final TextEditingController sigarController;
  final TextEditingController alcoholController;
  final TextEditingController drugsController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.78),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 16.0, horizontal: 10),
            child: Column(
              children: [
                const Text(
                  'نمط الحياة',
                  style: Styles.bold16,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ':التدخين',
                          style: Styles.semiBold14,
                          textDirection: TextDirection.ltr,
                        ),
                        SizedBox(height: 15),
                        Text(
                          ':استهلاك الكحوليات',
                          style: Styles.semiBold14,
                          textDirection: TextDirection.ltr,
                        ),
                        SizedBox(height: 15),
                        Text(
                          ':المخدرات',
                          style: Styles.semiBold14,
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InfoTextField(
                            width: 120,
                            heightController: sigarController,
                            hintText: 'لا'),
                        const SizedBox(height: 10),
                        InfoTextField(
                            width: 120,
                            heightController: alcoholController,
                            hintText: 'لا'),
                        const SizedBox(height: 10),
                        InfoTextField(
                            width: 120,
                            heightController: drugsController,
                            hintText: 'لا',
                            textInputType: TextInputType.text),
                      ],
                    )
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
