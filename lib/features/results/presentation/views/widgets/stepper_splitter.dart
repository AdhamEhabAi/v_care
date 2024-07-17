import 'package:flutter/material.dart';

class StepperSplitter extends StatelessWidget {
  const StepperSplitter({

    super.key,
    this.color = Colors.white
  });
   final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          height: 1,
          decoration: BoxDecoration(color: color),
        ),
      ),
    );
  }
}
