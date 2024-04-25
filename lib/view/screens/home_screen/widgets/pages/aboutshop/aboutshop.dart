import 'package:barber_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../const/const.dart';
import '../../../../../../utils/buttons_widget.dart';
import '../../../homescreen.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    String query = Uri.encodeComponent("lucknow");
    String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec justo eget turpis suscipit pharetra. Nulla facilisi.',
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Working Hours:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(width: 8.0),
        Row(
          children: [
            Text('Sunday-Saturday',
                style: Textstyle.customstyle(
                  grey,
                  16,
                )),
            const SizedBox(width: 16.0),
            Text('08:00 AM - 09:00 PM',
                style: Textstyle.customstyle(
                  black,
                  16,
                )),
          ],
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Contact Us:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 8.0),
        Text('+1 123 456 7890',
            style: Textstyle.customstyle(
              yellow,
              16,
            )),
        const SizedBox(height: 16.0),
        NearbyLocation(
          buttontext: "See on Maps",
          text: "Our Address",
          onpressed: () {
            launch(googleUrl);
          },
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: yellow,
            ),
            const SizedBox(width: 5.0),
            Text("new vallay lucknow",
                style: Textstyle.customstyle(
                  grey,
                  16,
                ))
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 250.0,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                image: AssetImage("assets/googlemap.jpg"),
                fit: BoxFit.fill,
              )),
        ),
        const SizedBox(height: 20.0),
        TextButtonwidget(
          buttonText: "Book Now",
          buttonbgcolor: yellow,
          buttonborderRadius: 10,
          buttonheight: 60,
          buttontextcolor: black,
          buttonwidth: double.infinity,
          onTap: () {
            // log(passwordController.text);
            // log(emailController.text);
            // signup();
            // Get.to(const Emailverification());
          },
        ),
      ],
    );
  }
}
