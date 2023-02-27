import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PaymentDetails extends StatelessWidget {
  final String mobileNum;
  final String selectedButton;

  PaymentDetails({required this.selectedButton, required this.mobileNum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mobileNum + "@" + selectedButton),
      ),
      body: Center(
          child: QrImage(
        data: mobileNum + "@" + selectedButton,
        version: QrVersions.auto,
        size: 320,
        gapless: false,
      )),
    );
  }
}
