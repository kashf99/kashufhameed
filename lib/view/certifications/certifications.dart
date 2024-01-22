import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/certification_controller.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import 'components/certification_grid.dart';

class Certifications extends StatelessWidget {
  final controller=Get.put(CertificationController());
   Certifications({super.key});
  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Education & ', title: 'Certifications'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: CertificateGrid(crossAxisCount: 2,ratio: 2,),
                  extraLargeScreen: CertificateGrid(crossAxisCount: 2,ratio: 2),
                  largeMobile: CertificateGrid(crossAxisCount: 1,ratio: width*0.0036
                  ),
                  mobile: CertificateGrid(crossAxisCount: 1,ratio:  width*0.0015),
                  tablet: CertificateGrid(ratio: width*0.0016,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}










