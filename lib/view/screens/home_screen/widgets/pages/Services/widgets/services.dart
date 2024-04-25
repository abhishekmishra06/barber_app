import 'package:barber_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../const/const.dart';
import '../../../../homescreen.dart';
import '../servicescreen.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NearbyLocation(
            buttontext: "See All",
            text: "Our Services",
            onpressed: () {
              Get.to(const Servicescreen());
            },
          ),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(
            height: 20,
          ),
          buildlist(titletext: "Haircut", tralingtext: "44 types"),
          const SizedBox(
            height: 15,
          ),
          buildlist(titletext: "Beard Trim", tralingtext: "20 types"),
          const SizedBox(
            height: 15,
          ),
          buildlist(titletext: "Shave", tralingtext: "30 types"),
          const SizedBox(
            height: 15,
          ),
          buildlist(titletext: "Hair Coloring", tralingtext: "20 types"),
          const SizedBox(
            height: 15,
          ),
          buildlist(titletext: "Facial", tralingtext: "44 types"),
          const SizedBox(
            height: 15,
          ),
          buildlist(titletext: "Head Massage", tralingtext: "10 types"),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

Widget buildlist({
  required String titletext,
  required String tralingtext,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      color: const Color.fromARGB(44, 190, 190, 190),
      borderRadius: BorderRadius.circular(15),
    ),
    child: ListTile(
      title: Text(titletext),
      trailing: Text(
        tralingtext,
        style: Textstyle.black,
      ),
    ),
  );
}
