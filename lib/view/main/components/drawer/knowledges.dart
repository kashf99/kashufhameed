import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Softwares and Tools',style:
          TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 18,),),
        ),
        KnowledgeText(knowledge: 'Android Studio, XCode, VS Code'),
        KnowledgeText(knowledge: 'Trello, Slack, Postman'),
        KnowledgeText(knowledge: 'Swagger, Figma'),
      ],
    );
  }

}
