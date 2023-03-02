import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarLogin extends StatelessWidget {
  const AppBarLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .3,
      child: Stack(
        // fit: StackFit.passthrough,
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/images/Ellipse 47.svg',
                  fit: BoxFit.cover,
                  // color: Color(0xffFE7D55),
                )),
          ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  'assets/images/Ellipse 48.svg',
                  fit: BoxFit.cover,
                  // color: Color(0xffFE7D55),
                )),
          ),
          const Positioned.fill(
            bottom: -50,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
