import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_coloumn.dart';
import '../../../res/constants.dart';
import 'subtitle_text.dart';
class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
          children: [
            //const Spacer(),
            ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(colors: [
                brightblue,
                brightgreen,
              ]).createShader(bounds);
            },
            child: 
            Text('Follow Me',style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
               height: 0,
              //  shadows:  [
              //     const Shadow(color: brightblue,offset: Offset(0, 2),blurRadius: 10),
              //     const Shadow(color: brightgreen,offset: Offset(0, -2),blurRadius: 10),
              //   ]
            ),),
           
          ),
            
            Container(
              height: 3,
              width: size.height*0.06,
              margin: const EdgeInsets.symmetric(vertical: defaultPadding * 0.5,horizontal: defaultPadding * 0.5),
              decoration: BoxDecoration(
                 gradient: LinearGradient(colors: [brightblue,brightgreen]),
                  borderRadius: BorderRadius.circular(defaultPadding)
              ),
            ),
            const SocialMediaIconColumn(),
          //  const Spacer(),
          ],
        ),
    );
    // },);
  }
}


