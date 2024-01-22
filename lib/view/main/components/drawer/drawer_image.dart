import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(defaultPadding / 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 8, 45, 54),
              Color.fromARGB(255, 19, 24, 29),
            ],
          ),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 8, 45, 54),
                blurRadius: 10,
                offset: Offset(0, 2)),
            BoxShadow(
                color: Color.fromARGB(255, 19, 24, 29),
                blurRadius: 10,
                offset: Offset(0, -2)),
          ]),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/images/churail.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
