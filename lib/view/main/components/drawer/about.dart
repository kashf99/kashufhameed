import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'drawer_image.dart';
class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color:  bgColor,
        child: const Column(
          children: [
            Spacer(flex: 2,),
            DrawerImage(),
            Spacer(),
            Text('Kashuf Hameed', 
             style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white
              ),),
            SizedBox(height: defaultPadding/4,),
            Text('Mobile Application Developer\nFreelancer, Coding Teacher & Trainer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  height: 1.5
              ),),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
