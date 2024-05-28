import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/const.dart';
import '../../../controller/controller.dart';
import '../../../utils/components/buttons_widget.dart';
import '../../../utils/components/inputfield.dart';
import '../../../utils/components/textstyle.dart';
import '../phoneOtp_view/phonenootpscreen.dart';

class Phonenoverificationscreen extends StatelessWidget {
  const Phonenoverificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          title: const Text(
            "Verification",
            style: Textstyle.black,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "This number will be used for all ride-related ",
                  style: Textstyle.customstyle(grey, 17),
                ),
                Text(
                  "communication. You shall receive an SMS  ",
                  style: Textstyle.customstyle(grey, 17),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Phone.no",
                  style: Textstyle.hinttextcolor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Inputfield(
                    controller: emailController,
                    hinttext: "e.g  +919000000000",
                    inputfieldIcon: const Icon(Icons.phone_android_outlined)),
                const SizedBox(
                  height: 30,
                ),
                TextButtonwidget(
                  buttonText: "Verifyy",
                  buttonbgcolor: yellow,
                  buttonborderRadius: 10,
                  buttonheight: 60,
                  buttontextcolor: black,
                  buttonwidth: double.infinity,
                  onTap: () {
                    Get.to(const Phoneotpscreen());
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
