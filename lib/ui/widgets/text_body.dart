import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  const TextBody({
    required this.titel,
    required this.body,
    super.key,
  });
  final String titel, body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titel,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 80),
          child: Text(
            body,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xffB9B9B9),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
