import 'package:flutter/material.dart';
import 'package:qr_code/ui/widgets/app_ber_scan_qr_code.dart';
import 'package:qr_code/ui/widgets/const_text_buttom.dart';
import 'package:qr_code/ui/widgets/list_vew_items.dart';
import 'package:qr_code/ui/widgets/text_body.dart';

class ScanningResult extends StatelessWidget {
  const ScanningResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 75),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppBarScanQrCode(
                      imageIcon: 'assets/images/Group 9.svg'),
                  const TextBody(
                    titel: 'Scanning Result',
                    body:
                        '''Proreader will Keep your last 10 days history to keep your all scared history please purched our pro package''',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height < 700 ? 20 : 75,
                  ),
                  const LsitViewItems(),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 24),
                      child: ConstTextButton(text: 'Send', onPressed: () {})),
                  // SizedBox(
                  //   height:
                  //       MediaQuery.of(context).size.height < 700 ? 20 : 85,
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
