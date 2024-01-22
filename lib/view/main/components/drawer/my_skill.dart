import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'bullet.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2, right: defaultPadding),
      child: Row(
        children: [
          const Bullet(),
          const SizedBox(
            width: defaultPadding/2,
          ),
          Text(
            title,
            style: const TextStyle(color:
             Color.fromARGB(255, 243, 243, 243),
             fontWeight: FontWeight.w400,
             fontSize: 12,
             ),
          ),
        ],
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'Flutter'),
            AnimatedLinearProgressIndicator(title: 'Dart'),
            AnimatedLinearProgressIndicator(
              title: 'Firebase',
            ),
          ],
        ),
         Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'REST APIs'),
         AnimatedLinearProgressIndicator(
              title: 'Notifications',
            ),
          ],
        ),
         Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'Payment Integration'),
         AnimatedLinearProgressIndicator(
              title: 'Github',
            ),
          ],
        ),
         Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'Open AI'),
         AnimatedLinearProgressIndicator(
              title: 'Google Maps',
            ),
          ],
        ),
        Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'Getx'),
            AnimatedLinearProgressIndicator(title: 'Bloc'),
            AnimatedLinearProgressIndicator(
              title: 'Provider',
            ),
          ],
        ),
        Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'Hive'),
            AnimatedLinearProgressIndicator(title: 'Shared Preference'),
           
          ],
        ),
        Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'Clean Architecture'),
            AnimatedLinearProgressIndicator(title: 'MVC, MVVM'),
          ],
        ),
        Row(
          children: [
            AnimatedLinearProgressIndicator(title: 'Responsive Design'),
         AnimatedLinearProgressIndicator(
              title: 'Sqlite',
            ),
          ],
        ),
      ],
    );
  }
}
