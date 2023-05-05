import 'package:flutter/material.dart';

import '../../../components/animated_progres_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.titleSmall),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          lable: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          lable: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          lable: "Kotlin",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          lable: "C#",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          lable: "C++",
        ),
      ],
    );
  }
}