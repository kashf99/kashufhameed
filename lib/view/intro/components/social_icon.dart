import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/constants.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.icon, this.logo,  this.onTap});
  final String icon;
  final Widget? logo;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4,horizontal: defaultPadding * 0.15),
        child:logo?? SvgPicture.asset(icon,color: Colors.white,height: 12,width: 12,),
      ),
    );
  }
}