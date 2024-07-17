import 'package:flutter/material.dart';
import 'package:v_care/core/utils/styles.dart';
import 'package:v_care/features/results/presentation/views/widgets/sort_widget.dart';

class SortingWidgets extends StatelessWidget {
  const SortingWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 29),
      child: SizedBox(
        height: 35,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:  const [
            SortWidget(widget: Row(
              children: [
                Text('ترتيب حسب',style: Styles.semiBold16,),
                Icon(Icons.sort),
              ],
            ),),
            SortWidget(widget: Text('تم الكشف',style: Styles.semiBold16,)),
            SortWidget(widget: Text('تم التحليل',style: Styles.semiBold16,)),
            SortWidget(widget: Text('نتيجة الكشف',style: Styles.semiBold16,)),
          ],
        ),
      ),
    );
  }
}