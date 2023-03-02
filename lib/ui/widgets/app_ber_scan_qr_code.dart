import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarScanQrCode extends StatelessWidget {
  const AppBarScanQrCode({
    required this.imageIcon,
    super.key,
  });
  final String imageIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height < 700 ? 70 : 160,
      padding: const EdgeInsets.only(top: 10, right: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 5,
              width: 70,
              decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(imageIcon),
          ),
        ],
      ),
    );
  }
}
