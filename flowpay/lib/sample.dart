import 'dart:ui';

import 'package:flutter/material.dart';
import 'components/scanpage.dart';

class Sample extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code_scanner_rounded),
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
          mainCard,
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 180,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        "Buy Tez",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "with your card",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 180,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF1E00B7),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        "Earn 5%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "on your tez",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 180,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        "INDIA ART FAIR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "9-12 FEB 2023",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      drawer: drawer,
    );
  }
}

var drawer = Drawer(
  backgroundColor: Colors.grey[900],
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.grey[900],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Himanshu",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        // decoration: BoxDecoration(
        //     border:
        //         Border(bottom: BorderSide(color: Colors.grey, width: 1))),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          leading: Icon(
            Icons.backup_rounded,
            color: Colors.white,
          ),
          title: Text(
            'Backup',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your settings code here
          },
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        // decoration: BoxDecoration(
        //     border:
        //         Border(bottom: BorderSide(color: Colors.grey, width: 1))),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          // shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20)),
          leading: Icon(
            Icons.lock_rounded,
            color: Colors.white,
          ),
          title: Text(
            'Change passcode',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your settings code here
          },
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        // decoration: BoxDecoration(
        //     border:
        //         Border(bottom: BorderSide(color: Colors.grey, width: 1))),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          leading: Icon(
            Icons.fingerprint,
            color: Colors.white,
          ),
          title: Text(
            'Sign in with Biometrics',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your settings code here
          },
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          leading: Icon(
            Icons.wallet_rounded,
            color: Colors.white,
          ),
          title: Text(
            'Connected wallets',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your settings code here
          },
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          leading: Icon(
            Icons.network_check_rounded,
            color: Colors.white,
          ),
          title: Text(
            'Network',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your settings code here
          },
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          leading: Icon(
            Icons.settings_rounded,
            color: Colors.white,
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your settings code here
          },
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          // shape: RoundedRectangleBorder(
          //     borderRadius:
          //         BorderRadius.vertical(top: Radius.circular(20))),
          leading: Icon(
            Icons.policy_rounded,
            color: Colors.white,
          ),
          title: Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your help code here
          },
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListTile(
          minLeadingWidth: 20,
          tileColor: Colors.grey[800],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          leading: Icon(
            Icons.help,
            color: Colors.white,
          ),
          title: Text(
            'Help',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Add your help code here
          },
        ),
      ),
    ],
  ),
);

var mainCard = Container(
  alignment: Alignment.centerLeft,
  width: double.infinity,
  height: 200,
  margin: const EdgeInsets.all(10),
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
      color: const Color(0xFF762CD5), borderRadius: BorderRadius.circular(30)),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "himanshu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "tz1...vCW",
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.copy,
                color: Colors.white54,
              ),
            ],
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "\$0.00",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(104, 0, 0, 0),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Transform.rotate(
                  angle: 0,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.send_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.qr_code_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ],
  ),
);
