import 'package:flutter/material.dart';

class UpperContainerWidget extends StatelessWidget {
  const UpperContainerWidget({
    super.key,
    required this.headerText,
    required this.text,
  });
  final String headerText;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(90.0),
                bottomRight: Radius.circular(90.0),
              )),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3.65,
          decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(90.0),
                bottomRight: Radius.circular(90.0),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                headerText,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              text,
            ],
          ),
        ),
      ],
    );
  }
}
