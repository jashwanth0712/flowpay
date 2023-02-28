import 'package:flowpay/sample.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Success"),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 100),
        child: Center(
          child: Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_vuliyhde.json',
            repeat: false,
          ),
        ),
      ),
    );
  }
}
