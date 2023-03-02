import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LsitViewItems extends StatelessWidget {
  const LsitViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // primary: false,
        clipBehavior: Clip.none,
        itemCount: 4,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 14,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 75,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                color: Color(0xffF4F4F4)),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 16,
                ),
                SvgPicture.asset('assets/images/Group 12.svg'),
                const SizedBox(
                  width: 35,
                ),
                const Text(
                  '7E0918FF',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
