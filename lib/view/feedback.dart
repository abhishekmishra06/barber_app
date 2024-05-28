import 'package:barber_app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/const.dart';
import '../utils/components/buttons_widget.dart';
import '../utils/components/inputfield.dart';
import '../utils/components/textstyle.dart';
import 'home_screen/homescreen.dart';

class FeedbackDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      title: Column(
        children: [
          Image.asset(
            'assets/tick.png', // Change the image path as per your project structure
            width: 160,
            height: 130,
          ),
          const SizedBox(height: 8),
          Text(
            'You have done using barber/salon service',
            style: Textstyle.customstyle(yellow, 25),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('please leave your review so others'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('people can know your opinion'),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: yellow,
                )
              ],
            ),
            const SizedBox(height: 16),
            Inputfield(
                controller: emailController,
                hinttext: "Enter your opinion",
                inputfieldIcon: const Icon(Icons.feedback_sharp)),
            const SizedBox(height: 16),
            TextButtonwidget(
              buttonText: "Submit",
              buttonbgcolor: yellow,
              buttonborderRadius: 10,
              buttonheight: 60,
              buttontextcolor: black,
              buttonwidth: double.infinity,
              onTap: () {
                Get.to(const ());
              },
            ),
            const SizedBox(height: 15),
            TextButtonwidget(
              buttonText: "Latter",
              buttonbgcolor: yellow,
              buttonborderRadius: 10,
              buttonheight: 60,
              buttontextcolor: black,
              buttonwidth: double.infinity,
              onTap: () {
                Get.to(const HomeScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

void showFeedBackDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return FeedbackDialog();
    },
  );
}
