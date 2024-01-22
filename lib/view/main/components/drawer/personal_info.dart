import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '+92 349 5690534'),
        AreaInfoText(title: 'Email', text: 'kashufhameed@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@kashufhameed'),
        AreaInfoText(title: 'Github', text: '@kashf99'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
