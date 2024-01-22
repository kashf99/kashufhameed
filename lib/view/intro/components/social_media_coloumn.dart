import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0),
      child: Row(
        children: [
          SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: ()=>launchUrl(Uri.parse('https://www.linkedin.com/in/kashufhameed/'))),
          SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/kashf99')),),
         SocialMediaIcon(icon: '',
         logo: Image.asset("assets/icons/insta.png", width: 12,height: 12,),
         onTap: () => launchUrl(Uri.parse('https://www.instagram.com/kashuf_hameed?igsh=ZmZpaXVkcWxyYXh5&utm_source=qr')),),
         SocialMediaIcon(icon: '',
           logo: Image.asset("assets/icons/threads.png", width: 12,height: 12,),
         onTap: () => launchUrl(Uri.parse('https://www.threads.net/@kashuf_hameed')),),
        
        ],
      ),
    );
  }
}
