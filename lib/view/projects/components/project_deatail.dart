import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_link.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});

  double getcarouselwidth(double width) {
    if (width < 300) {
      return width / 2;
    } else if (width > 299 && width < 400) {
      return width / 2.5;
    } else if (width > 399 && width < 600) {
      return width / 3;
    } else if (width > 599 && width < 700) {
      return width / 3.2;
    } else if (width > 699 && width < 800) {
      return width / 3.2;
    } else if (width > 799 && width < 900) {
      return width / 3.5;
    } else if (width > 899 && width < 1000) {
      return width / 4;
    } else if (width > 999 && width < 1070) {
      return width / 4.1;
    } else if (width > 1069 && width < 1100) {
      return width / 5.3;
    } else {
      return width / 5;
    }
  }

  int getmaxlines(double width) {
    if (width < 300) {
      return 4;
    } else if (width > 299 && width < 400) {
      return 4;
    } else if (width > 499 && width < 600) {
      return 4;
    } else if (width > 599 && width < 800) {
      return 7;
    } else if (width > 799 && width < 900) {
      return 7;
    } else if (width > 899 && width < 1050) {
      return 8;
    } else if (width > 1049 && width < 1100) {
      return 5;
    } else if (width > 1099 && width < 1150) {
      return 4;
    } else {
      return 5;
    }
  }

  double gettextwidth(double width) {
    if (width < 300) {
      return width / 1.8;
    } else if (width > 299 && width < 400) {
      return width / 1.9;
    } else if (width > 399 && width < 600) {
      return width / 2.9;
    } else if (width > 599 && width < 800) {
      return width / 2.8;
    } else if (width > 799 && width < 850) {
      return width / 2.5;
    } else if (width > 849 && width < 1080) {
      return width / 2;
    } else if (width > 1079 && width < 1100) {
      return width/ 4.8; // 2;
      
    } else if (width > 1099 && width < 1150) {
      return width / 5;
    } else {
      return width / 6;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[index].name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(
                height: defaultPadding / 2,
              )
            : const SizedBox(
                height: defaultPadding,
              ),
        Row(
          children: [
            SizedBox(
              width: gettextwidth(size.width),
              child: Text(
                projectList[index].description,
                textAlign: TextAlign.justify,
                style: const TextStyle(color: Colors.grey, height: 1.5),
                maxLines: getmaxlines(size.width),
               
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              width: getcarouselwidth(size.width),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                ),
                items: projectList[index].images.map((String imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
         const Spacer(),
        ProjectLinks(
          index: index,
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
