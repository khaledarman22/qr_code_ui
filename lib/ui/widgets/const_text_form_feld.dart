import 'package:flutter/material.dart';

class ConstTextFormField extends StatelessWidget {
  const ConstTextFormField({
    Key? key,
    this.keyboardType = TextInputType.visiblePassword,
    this.validator,
    required this.hint,
  }) : super(key: key);
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 20, color: Colors.black),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffDFDCDC)),
          borderRadius: BorderRadius.circular(5.0),
        ),
        suffixIcon: hint == 'Password' ? Icon(Icons.visibility) : null,
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff8B90A0)),
        filled: true,
        fillColor: Colors.white,
        // contentPadding: const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffFE7D55)),
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffDFDCDC)),
          borderRadius: BorderRadius.circular(5.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
