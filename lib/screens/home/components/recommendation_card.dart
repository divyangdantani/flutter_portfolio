import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import '../../../models/Recommendation.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                  child: RecommendationsDialogCard(
                      recommendation: recommendation));
            });
      },
      child: Container(
        width: Responsive.isMobile(context) ? 300 : 400,
        padding: EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              recommendation.source!,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              recommendation.text!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationsDialogCard extends StatelessWidget {
  const RecommendationsDialogCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: Responsive.isMobile(context) ? 300 : 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            recommendation.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 25,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
