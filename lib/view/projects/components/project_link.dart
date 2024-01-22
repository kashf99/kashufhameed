import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Text('Live',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis),
            IconButton(onPressed: () {launchUrl(Uri.parse(projectList[index].applink));}, icon: Image.asset('assets/icons/appstore.png',width: 25,height: 25,)),
        
            IconButton(onPressed: () {launchUrl(Uri.parse(projectList[index].playlink));}, icon: Image.asset('assets/icons/playstore.png',width: 25,height: 25,)),
        
          ],
        ),
        const Spacer(),
        // TextButton(
        //     onPressed: () {
        //       launchUrl(Uri.parse(projectList[index].link));
           
        //     }, child: const Text('App Store',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10),))
    
      ],
    );
  }
}
