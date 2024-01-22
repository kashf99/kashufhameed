import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/intro_body.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_list.dart';
class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:Responsive.isDesktop(context)?
        
         EdgeInsets.only(top:MediaQuery.sizeOf(context).height * 0.1):
        EdgeInsets.only(top:10)
       
         ,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.01,
            ),
           // if (!Responsive.isLargeMobile(context))  MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.02,
            ),
        
            // if (!Responsive.isLargeMobile(context))
            // SizedBox(height:  MediaQuery.sizeOf(context).height * 0.05,
            // width:  MediaQuery.sizeOf(context).height * 0.07,
            
            // ),
            // const SocialMediaIconList(),
            SizedBox(
            //  height:  MediaQuery.sizeOf(context).height * 0.05,
              width: MediaQuery.sizeOf(context).width * 0.07,
            ),
            const Expanded(
              child: IntroBody(),
            ),
           
          ],
        ),
      ),
    );
  }
}



