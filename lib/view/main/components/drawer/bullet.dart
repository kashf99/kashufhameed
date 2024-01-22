import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class Bullet extends StatelessWidget {
  const Bullet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                // height: defaultPadding  ,
                // width: defaultPadding ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  boxShadow: const [
                    BoxShadow(
                      color: brightgreen,
                      offset: Offset(1, 1),
                    ),
                    BoxShadow(
                      color: brightblue,
                      offset: Offset(-1, -1),
                    ),
                  ],
                ),
                child: Center(
                    child: ShaderMask(
                  shaderCallback: (bounds) {
                    return const LinearGradient(colors: [
                      Color.fromARGB(255, 16, 88, 214),
                      Color.fromARGB(255, 14, 203, 190)
                    ]).createShader(bounds);
                  },
                  child: Icon(
                    Icons.album_rounded,
                    color: Colors.white,
                    size: 10 ,
                  ),
                )),
              );
  }
}