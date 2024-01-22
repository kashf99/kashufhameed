import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import 'components/projects_grid.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  double getwidth(double width) {
    if (width > 400 && width < 600) {
      return width * 0.003;
    } else {
      return width * 0.0028;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'My', title: 'Projects'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: Responsive(
              desktop: ProjectGrid(crossAxisCount: 2, ratio: 1.8),
              extraLargeScreen: ProjectGrid(crossAxisCount: 2, ratio: 1.8),
              largeMobile: ProjectGrid(crossAxisCount: 1, ratio: 1.7),
              mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.7),
              tablet: ProjectGrid(
                ratio: getwidth(size.width),
                crossAxisCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
