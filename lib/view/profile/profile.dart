import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../const/const.dart';
import '../../utils/components/buttons_widget.dart';
import '../../utils/components/list.dart';
import '../../utils/components/textstyle.dart';

import '../../utils/components/urllanch.dart';
 import 'basicinfo.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: const Text("Profile", style: Textstyle.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.to(const Editinfo());
              },
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: galleryFile == null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/profileimage.png",
                                fit: BoxFit.cover,
                              ))
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.file(
                                galleryFile!,
                                fit: BoxFit.cover,
                              ),
                            )),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text('Johndoe@gmail.com',
                              style: Textstyle.customstyle(grey, 15)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(33, 167, 240, 249),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.camera_alt),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Add a profile photo ",
                                  style: Textstyle.customstyle(black, 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                                "Help to better convertation, Person to know ",
                                style: Textstyle.black),
                            const Text(
                              "they's talking tothe right person",
                              style: Textstyle.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(height: 20),
            Container(height: 1, width: double.infinity, color: buttonborder),
            const SizedBox(height: 20),
            Listwidget(
              firsticon: Icons.person,
              lasticon: Icons.navigate_next,
              lasticoncolor: grey,
              ontap: () {
                Get.to(const Editinfo());
              },
              text: "Edit profile",
            ),
            const SizedBox(
              height: 15,
            ),
            Listwidget(
              firsticon: Icons.support_agent,
              lasticon: Icons.navigate_next,
              lasticoncolor: grey,
              ontap: () {
                var whatsappUrl = "whatsapp://send?phone=91+6386555485"
                    "&text=${Uri.encodeComponent("What's problem")}";
                try {
                  launch(whatsappUrl);
                } catch (e) {
                  log(e as String);
                }
              },
              text: "Support",
            ),
            const SizedBox(
              height: 15,
            ),
            Listwidget(
              firsticon: Icons.people_alt_sharp,
              lasticon: Icons.navigate_next,
              lasticoncolor: grey,
              ontap: () {
                Share.share(
                    'hey! check out this new app https://youtu.be/cY4nGCw-JxY?si=pRZgLLRVCimiFyKl',
                    subject: 'New App');
              },
              text: "Share",
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(44, 190, 190, 190),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.dark_mode, size: 25, color: black),
                    const SizedBox(width: 10),
                    Text(
                      "Dark Mode",
                      style: Textstyle.customstyle(black, 15),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Switch(
                            inactiveThumbColor: white,
                            value: true,
                            activeColor: white,
                            activeTrackColor: yellow,
                            onChanged: (val) {}),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Listwidget(
              firsticon: Icons.lock,
              lasticon: Icons.navigate_next,
              lasticoncolor: grey,
              ontap: () {
                // Get.to(   );
              },
              text: "Privcy Policy",
            ),
            const SizedBox(
              height: 15,
            ),
            Listwidget(
              firsticon: Icons.logout,
              lasticon: Icons.navigate_next,
              lasticoncolor: grey,
              ontap: () {
                logout(context);
              },
              text: "Logout",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  hoverColor: Colors.green,
                  onPressed: () {
                    Urllaunch.launchUrll("https://www.facebook.com");
                  },
                  icon: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(44, 190, 190, 190),
                      child: Icon(
                        FontAwesomeIcons.facebookF,
                        color: blue,
                      )),
                ),
                IconButton(
                  hoverColor: Colors.green,
                  onPressed: () {
                    Urllaunch.launchUrll("https://www.instagram.com");
                  },
                  icon: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(44, 190, 190, 190),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(44, 190, 190, 190),
                        child: Icon(
                          FontAwesomeIcons.squareInstagram,
                          color: red,
                        )),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("version 1.0.0", style: Textstyle.hinttextcolor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void logout(BuildContext context) {
  showModalBottomSheet<void>(
    elevation: 2,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      width: 80,
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                        thickness: 3,
                        indent: 5,
                        endIndent: 5,
                      )),
                  const Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: red),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 1,
                            width: double.infinity,
                            color: buttonborder),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Are you sure you want to logout?",
                              style: Textstyle.customstyle(black, 20),
                            )
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButtonwidget(
                              buttonText: "Cancel",
                              buttonbgcolor: lightyellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButtonwidget(
                              buttonText: "Yes, Logout",
                              buttonbgcolor: yellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
