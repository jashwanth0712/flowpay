import 'package:flowpay/components/paymentdetails.dart';
import 'package:flutter/material.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xFF762CD5),
          borderRadius: BorderRadius.circular(30)),
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
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
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
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.qr_code_rounded),
                          color: Colors.white,
                          onPressed: () {
                            showBottomSheet(
                              backgroundColor: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25))),
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.55,
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Spacer(),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(
                                              Icons.close_rounded,
                                              size: 30,
                                            ),
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "Choose a chain",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PaymentDetails(
                                                          selectedButton: 'sol',
                                                          mobileNum:
                                                              '7339933495')));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.network(
                                                "https://cryptologos.cc/logos/flow-flow-logo.png",
                                                height: 30,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Flow",
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.network(
                                                "https://blog.logomyway.com/wp-content/uploads/2021/11/Ethereum-logo.png",
                                                height: 30,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Ethereum",
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.network(
                                                "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png",
                                                height: 30,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Solana",
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.currency_rupee,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Rupees",
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        )
                        // Icon(
                        //   Icons.qr_code_rounded,
                        //   size: 30,
                        //   color: Colors.white,
                        // ),
                        )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
