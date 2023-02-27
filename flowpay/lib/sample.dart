import 'dart:ui';

import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        actions:[
          IconButton(
            icon: Icon(Icons.qr_code_scanner_rounded),
            onPressed: () {
              // Open the side menu
              _key.currentState!.openDrawer();
            },
          ),
        ] ,
        backgroundColor: Colors.black,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          mainCard,
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  children: [
                    Text(
                      "Buy Tez",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "with your card",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Side Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Add your settings code here
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                // Add your help code here
              },
            ),
          ],
        ),
      ),
    );
  }
}

var mainCard = Container(
  alignment: Alignment.centerLeft,
  width: double.infinity,
  height: 200,
  margin: const EdgeInsets.all(15),
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
