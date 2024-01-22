import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../res/constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          const Icon(Icons.check_box_outlined,
          color: Color.fromARGB(255, 169, 169, 169),
          size: 15,
          ),
          const SizedBox(width: defaultPadding/2,),
          Text(knowledge,
          style: const TextStyle( color: Color.fromARGB(255, 169, 169, 169),
            fontWeight: FontWeight.w500,
            fontSize: 12,),
          ),
        ],
      ),
    );
  }
}

