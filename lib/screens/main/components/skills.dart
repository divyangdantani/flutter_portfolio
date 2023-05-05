import 'package:flutter/material.dart';

import '../../../components/animated_progres_indicator.dart';
import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            child:
                Text('Skills', style: Theme.of(context).textTheme.titleSmall)),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                lable: "Flutter",
                percentage: 0.8,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                lable: "Java",
                percentage: 0.7,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                lable: "Firebase",
                percentage: 0.65,
              ),
            ),
          ],
        )
      ],
    );
  }
}
