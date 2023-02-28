import 'dart:ui';
import 'package:flutter/material.dart';
import 'components/scanpage.dart';
import 'components/mainpage.dart';
import 'components/drawer.dart';
import 'components/card.dart';
import 'components/show_webview.dart';
class Sample extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.network(
              "https://raw.githubusercontent.com/jashwanth0712/flowpay/main/flowpay/assets/icons/scan.png",
              height: 25,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return ScanPage();
              }));
            },
          ),
        ],
        backgroundColor: Colors.black,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          mainPage(),
          Row(
            children: [
              card(
                heading: 'Buy Flow',
                subheading: 'with UPI',
                color: Colors.amber,
                onPressed: () {},
              ),
              card(
                heading: 'Earn 5%',
                subheading: 'By staking',
                color: Color(0xff1e00b7),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: card(
                    heading: 'View transactions',
                    subheading: 'with flowpay',
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>MyWebView( selectedUrl: 'https://razorpay-api.vercel.app/')),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      drawer: sideDrawer(),
    );
  }
}
