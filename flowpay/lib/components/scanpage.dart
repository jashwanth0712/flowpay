import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

class ScanPage extends StatelessWidget {
  ScanController controller = ScanController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(
          children: [
            ScanView(
              controller: controller,
              scanAreaScale: .7,
              scanLineColor: Colors.green,
              onCapture: (data) {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text('scan result'),
                      ),
                      body: Center(
                        child: Text(data),
                      ),
                    );
                  },
                )).then((value) {
                  controller.resume();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
