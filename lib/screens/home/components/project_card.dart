import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(project.description!,
              maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5)),
          Spacer(),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (contex) {
                      return Dialog(
                          child: ProjectDialogCard(project: project));
                    });
              },
              child: Text(
                'Read More>>',
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}

class ProjectDialogCard extends StatelessWidget {
  const ProjectDialogCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: Responsive.isMobile(context) ? 300 : 400,
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          Text(project.description!,
              maxLines: 25,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5)),
          // Spacer(),
          // TextButton(
          //     onPressed: () {},
          //     child: Text(
          //       'Read More>>',
          //       style: TextStyle(color: primaryColor),
          //     ))
        ],
      ),
    );
  }
}
