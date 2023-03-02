import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsBar extends StatelessWidget {
  const IconsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/Group 6.svg'),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset('assets/images/Group 5.svg'),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset('assets/images/Group 7.svg'),
      ],
    );
  }
}
