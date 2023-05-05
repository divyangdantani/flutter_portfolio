import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String lable;
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text((value * 100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.titleMedium),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          lable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          // style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double percentage;
  final String lable;
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        lable,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text((value * 100).toInt().toString() + "%")
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                ],
              )),
    );
  }
}


