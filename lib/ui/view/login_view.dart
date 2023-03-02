// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:qr_code/ui/widgets/app_bet_login.dart';
import 'package:qr_code/ui/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Align(alignment: Alignment.topCenter, child: AppBarLogin()),
            SizedBox(
              height: MediaQuery.of(context).size.height < 700 ? 30 : 75,
            ),
            const Align(alignment: Alignment.center, child: LoginBody()),
          ],
        ),
      ),
    );
  }
}
