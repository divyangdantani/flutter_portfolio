// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

//   Future<void> _launchUrl(String _url) async {
//   if (!await launchUrl(Uri.parse(_url))) {
//     throw Exception('Could not launch $_url');
//   }
// }

Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfo(
                    title: 'Residence',
                    text: 'India',
                  ),
                  // AreaInfo(
                  //   title: 'State',
                  //   text: 'Gujarat',
                  // ),
                  AreaInfo(
                    title: 'City',
                    text: 'Vadodara',
                  ),
                  AreaInfo(
                    title: 'Age',
                    text: '25',
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  TextButton(
                      onPressed: () {
                        _launchUrl(Uri.parse('https://drive.google.com/file/d/12lDtUGJe08HnnCnVgRUrQ7dCnrq1V9cA/view?usp=share_link'));
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'Download CV',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset('assets/icons/download.svg')
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              _launchUrl(Uri.parse('https://www.linkedin.com/in/divyang-dantani-66110911a'));
                            },
                            icon:
                                SvgPicture.asset('assets/icons/linkedin.svg')),
                        IconButton(
                            onPressed: () {
                              _launchUrl(Uri.parse('https://github.com/divyangdantani'));
                            },
                            icon: SvgPicture.asset('assets/icons/github.svg')),
                        IconButton(
                            onPressed: () {
                              _launchUrl(Uri.parse('https://twitter.com/divyang_dantani?t=u1CZE1l9v8fFxcJx-m9AXg&s=31'));
                            },
                            icon: SvgPicture.asset('assets/icons/twitter.svg')),
                        Spacer()
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
