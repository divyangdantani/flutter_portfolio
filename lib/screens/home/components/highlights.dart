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
                        value: 119,
                        text: 'K+',
                      ),
                      lable: 'Subscribers',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: '+',
                      ),
                      lable: 'Videos',
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
                        value: 30,
                        text: 'K+',
                      ),
                      lable: 'Github Projects',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: 'K+',
                      ),
                      lable: 'Stars',
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: 'K+',
                  ),
                  lable: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: '+',
                  ),
                  lable: 'Videos',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: 'K+',
                  ),
                  lable: 'Github Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: 'K+',
                  ),
                  lable: 'Stars',
                ),
              ],
            ),
    );
  }
}
