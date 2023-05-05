import 'package:flutter/material.dart';

import '../../../constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.counter,
    this.lable,
  }) : super(key: key);

  final Widget counter;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(lable!, style: Theme.of(context).textTheme.titleSmall)
      ],
    );
  }
}
