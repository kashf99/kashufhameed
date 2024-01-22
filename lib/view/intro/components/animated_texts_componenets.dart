import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 300, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}
class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                brightblue,
                brightgreen,
              //  Color(0XFF302b63),
               // Color(0XFF2e1437),
              ]),
              boxShadow:  [
                //#948e99#2e1437
                
//#23074d//#cc5333
//#0f0c29//#302b63//#24243e
//#eb5757//#000000



                BoxShadow(
                  color:lightgreenshadow.withOpacity(0.25),
                  //  Color(0XFF302b63),
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color:darkblueshadow.withOpacity(0.25),
                  //  Color(0XFF2e1437),
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 2, 1, 24),
                borderRadius: BorderRadius.circular(30),
              //  image: const DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover)
              ),
              child: Image.asset(
                'assets/images/image.png',
                height: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.4
                    : Responsive.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.28
                        : 400,
                width: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.4
                    : Responsive.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.28
                        : 400,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
