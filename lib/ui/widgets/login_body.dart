import 'package:flutter/material.dart';
import 'package:qr_code/ui/view/scan_qr_code.dart';
import 'package:qr_code/ui/widgets/const_text_form_feld.dart';

import 'const_text_buttom.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width - 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const ConstTextFormField(hint: 'Enter your Password'),
            const SizedBox(
              height: 16,
            ),
            const ConstTextFormField(hint: 'Password'),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Forgot Password?  ',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff757575)),
            ),
            const SizedBox(
              height: 43,
            ),
            ConstTextButton(
              text: 'Login',
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ScanQrCode(),
                ));
              },
            )
          ],
        ));
  }
}
