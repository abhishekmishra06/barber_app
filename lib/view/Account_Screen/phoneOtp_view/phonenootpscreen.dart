import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../const/const.dart';
import '../../../utils/components/buttons_widget.dart';
import '../../../utils/components/textstyle.dart';
import '../../profile/personalinfoscreen.dart';

class Phoneotpscreen extends StatelessWidget {
  const Phoneotpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      margin: const EdgeInsets.all(8),
      width: 60,
      height: 60,
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.black54, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: const Color.fromARGB(44, 190, 190, 190),
        borderRadius: BorderRadius.circular(11),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: yellow),
      color: lightyellow,
      borderRadius: BorderRadius.circular(8),
    );
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          leading: const BackButton(
            color: black,
            style: ButtonStyle(),
          ),
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
                  "Verify Phone.no, the code has been sent to ",
                  style: Textstyle.customstyle(grey, 17),
                ),
                Text(
                  "+91 9000000000",
                  style: Textstyle.customstyle(black, 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      // onChanged: (value) {
                      //   code=value ;
                      // },
                      showCursor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButtonwidget(
                  buttonText: "Verifyy",
                  buttonbgcolor: const Color(0xffffb905),
                  buttonborderRadius: 10,
                  buttonheight: 60,
                  buttontextcolor: black,
                  buttonwidth: double.infinity,
                  onTap: () {
                    Get.to(const Personalinfoscreen());
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Edit  Phoone.no ?",
                      style: Textstyle.customstyle(black, 13),
                    ),
                    TextButton(
                        child: Text(
                          "Change",
                          style: Textstyle.customstyle(red, 15),
                        ),
                        onPressed: () {
                          Get.to(const ());
                        }),
                    const SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
