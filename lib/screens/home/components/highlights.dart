import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'high_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: '+',
                  ),
                  lable: 'Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: '+',
                  ),
                  lable: 'Programming Langauges',
                ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                  counter: AnimatedCounter(
                    value: 2,
                    text: '+',
                  ),
                  lable: 'Awards',
                ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // HighLight(
                //   counter: AnimatedCounter(
                //     value: 119,
                //     text: 'K+',
                //   ),
                //   lable: 'Subscribers',
                // ),
                
                HighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: '+',
                  ),
                  lable: 'Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: '+',
                  ),
                  lable: 'Programming Langauges',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 2,
                    text: '+',
                  ),
                  lable: 'Awards',
                ),
              ],
            ),
    );
  }
}
