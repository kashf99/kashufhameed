import 'package:flutter/material.dart';
import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w400
          ),),
          Text(text,
           style: const TextStyle( color: Color.fromARGB(255, 169, 169, 169),
            fontWeight: FontWeight.w400,
            fontSize: 12,),
          ),
        ],
      ),
    );
  }
}