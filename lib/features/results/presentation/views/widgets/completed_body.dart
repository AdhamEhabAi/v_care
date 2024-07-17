import 'package:flutter/material.dart';
import 'package:v_care/features/results/presentation/views/order_details_view.dart';
import 'package:v_care/features/results/presentation/views/widgets/order_widget.dart';

class CompletedBody extends StatelessWidget {
  const CompletedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            OrderWidget(
              stageNumber: 5,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailsView(),
                    ));
              },
            ),
          ],
        );
      },
    );
  }
}
