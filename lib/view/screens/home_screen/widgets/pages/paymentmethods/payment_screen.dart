import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../const/const.dart';
import '../../../../../../utils/buttons_widget.dart';
import '../../../../../../utils/textstyle.dart';
import '../drawerscreens/histort.dart';
import '../drawerscreens/safety.dart';
import '../receipt/receiptsummary.dart';
import 'widgets/paymentmethod.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(44, 190, 190, 190),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.reply_sharp,
                      textDirection: TextDirection.rtl,
                    ))),
          )
        ],
      ),
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1)),
                  child: UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    accountName: Text(
                      "Abhishek Mishra",
                      style: Textstyle.customstyle(black, 15),
                    ),
                    accountEmail: Text(
                      "6386444795",
                      style: Textstyle.customstyle(black, 15),
                    ),
                    currentAccountPictureSize: const Size.square(50),
                    currentAccountPicture: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Icon(Icons.person_2)

                              //  Image.asset(
                              //   "assets/images/ride ac.png",
                              //   fit: BoxFit.cover,
                              // )
                              )),
                    ),
                  ), //UserAccountDrawerHeader
                ), //DrawerHeader

                const SizedBox(height: 10),
                ListTile(
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  iconColor: const Color.fromARGB(255, 0, 0, 0),
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(44, 190, 190, 190),
                    child: Icon(
                      Icons.car_rental,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text(
                    ' Driver mode ',
                    style: Textstyle.customstyle(black, 20),
                  ),
                  trailing: Switch(
                    value: true,
                    activeColor: const Color(0xffffb905),
                    onChanged: (value) {
                      // setState(() {
                      //   isSwitched = value;
                      //   saveSwitchValue(isSwitched);
                      // });
                    },
                  ),
                ),

                ListTile(
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  iconColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(44, 190, 190, 190),
                      child: Icon(
                        Icons.history,
                      )),
                  title: Text(
                    ' History ',
                    style: Textstyle.customstyle(black, 20),
                  ),
                  onTap: () {
                    Get.to(const History());
                  },
                ),

                ListTile(
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  iconColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(44, 190, 190, 190),
                      child: Icon(Icons.safety_check)),
                  title: Text(
                    ' Safety ',
                    style: Textstyle.customstyle(black, 20),
                  ),
                  onTap: () {
                    Get.to(const Saftey());
                  },
                ),

                ListTile(
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  iconColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(44, 190, 190, 190),
                      child: Icon(Icons.support_agent)),
                  title: Text(
                    ' Support ',
                    style: Textstyle.customstyle(black, 20),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  iconColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(44, 190, 190, 190),
                      child: Icon(Icons.share_sharp)),
                  title: Text(
                    ' Share ',
                    style: Textstyle.customstyle(black, 20),
                  ),
                  onTap: () {
                    (
                      'hey! check out this new app https://youtu.be/cY4nGCw-JxY?si=pRZgLLRVCimiFyKl',
                      subject: 'New App'
                    );
                  },
                ),

                ListTile(
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  iconColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(44, 190, 190, 190),
                      child: Icon(Icons.info)),
                  title: Text(
                    ' About ',
                    style: Textstyle.customstyle(black, 20),
                  ),
                  onTap: () {
                    // Get.to(saftey());
                  },
                ),

                ListTile(
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  iconColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(44, 190, 190, 190),
                      child: Icon(Icons.logout_sharp)),
                  title: Text(
                    ' Logout ',
                    style: Textstyle.customstyle(black, 20),
                  ),
                  onTap: () async {},
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text("version 2.3.1", style: Textstyle.hinttextcolor),
                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      hoverColor: Colors.green,
                      onPressed: () {},
                      icon: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(44, 190, 190, 190),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    IconButton(
                      hoverColor: Colors.green,
                      onPressed: () {},
                      icon: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(44, 190, 190, 190),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(44, 190, 190, 190),
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment(0.007, 1),
                      end: Alignment(0.007, -1),
                      colors: <Color>[
                        Color(0x66d9d9d9),
                        Color(0x66d9d9d9),
                        Color.fromARGB(240, 255, 255, 255),
                        Color(0x66d9d9d9)
                      ],
                      stops: <double>[0, 0.616, 1, 1],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 350,
                            width: 250,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(64, 170, 169, 169),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 345,
                              width: 245,
                              decoration: BoxDecoration(
                                color: const Color(0xffffb905),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            child: Container(
                              height: 340,
                              width: 245,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.south_america,
                                      size: 45,
                                      color: Color(0xffffb905),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Salon",
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text(
                                    "accepted here",
                                    style: Textstyle.hinttextcolor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Container(
                                      height: 1.5,
                                      width: 220,
                                      color: const Color.fromARGB(
                                          227, 190, 190, 190)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Icon(
                                  Icons.qr_code_scanner_sharp,
                                  size: 160,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    // Checkbox(value: true, onChanged: (Value(false))
                                    // )
                                    const Icon(Icons.currency_rupee),
                                    Text(
                                      "500",
                                      style: Textstyle.customstyle(black, 25),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (Value(false).call),
                      activeColor: red,
                    ),
                    Text(
                      "Pay with Cash",
                      style: Textstyle.customstyle(black, 20),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const PaymentMethodsScreen());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: lightyellow,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 3, bottom: 3),
                          child: const Text("Another Methods"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextButtonwidget(
              buttonText: "Submit and Next",
              buttonbgcolor: const Color(0xffffb905),
              buttonborderRadius: 10,
              buttonheight: 60,
              buttontextcolor: black,
              buttonwidth: double.infinity,
              onTap: () {
                Get.to(const Receiptsummary());
              },
            ),
          ],
        ),
      ),
    );
  }
}
