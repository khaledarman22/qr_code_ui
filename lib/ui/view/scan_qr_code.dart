import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/ui/view/scanning_result.dart';
import 'package:qr_code/ui/widgets/app_ber_scan_qr_code.dart';
import 'package:qr_code/ui/widgets/const_text_buttom.dart';
import 'package:qr_code/ui/widgets/icons_bar.dart';
import 'package:qr_code/ui/widgets/text_body.dart';

class ScanQrCode extends StatelessWidget {
  const ScanQrCode({super.key});

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
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppBarScanQrCode(
                      imageIcon: 'assets/images/Group 11.svg'),
                  const TextBody(
                    titel: 'Scan OR code',
                    body:
                        '''Place qr code inside the frame to scan please avoid shake to get results quickly''',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height < 700 ? 20 : 75,
                  ),
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: SvgPicture.asset('assets/images/Group 10.svg'),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const Text(
                    'Scanning Code...',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.55),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const IconsBar(),
                  const SizedBox(
                    height: 25,
                  ),
                  ConstTextButton(
                      text: 'Place Camera Code',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScanningResult(),
                        ));
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height < 700 ? 20 : 85,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
