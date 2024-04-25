import 'package:barber_app/const/const.dart';
import 'package:barber_app/utils/buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../utils/textstyle.dart';
import 'signup_screen.dart';

class Loginmethods extends StatelessWidget {
  const Loginmethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: const BackButton(
          color: black,
          style: ButtonStyle(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage("assets/profileimage.jpg" ,))),

               Text("Let's you in ", style: Textstyle.customstyle(black, 35),
),
              const SizedBox(
                height: 30,
              ),
                IconButtonwidget(
                                buttontext: "Continue with Facebook",

                  buttonIcon: const Icon(FontAwesomeIcons.facebook),
                  buttoniconcolor: blue,
                  buttonbordercolor: buttonborder,
                  buttonheight: 60,
                  buttonwidth: double.infinity,
                  buttonborderRadius: 10,
                  onTap: () async {}),
             
              const SizedBox(
                height: 30,
              ),
              IconButtonwidget(  
                              buttontext: "Continue with Google",
                  buttonIcon: const Icon(FontAwesomeIcons.google),
                  buttoniconcolor: red,
                  buttonbordercolor: buttonborder,
                  buttonheight: 60,
                  buttonwidth: double.infinity,
                  buttonborderRadius: 10,
                  onTap: () async {}),
              const SizedBox(
                height: 30,
              ),
              IconButtonwidget(
                buttontext: "Continue with Apple",
                  buttonIcon: const Icon(FontAwesomeIcons.apple),
                  buttoniconcolor: black,
                  buttonbordercolor: buttonborder,
                  buttonheight: 60,
                  buttonwidth: double.infinity,
                  buttonborderRadius: 10,
                  onTap: () async {}),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 1, width: 80, color: buttonborder),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Or Continue with"),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(height: 1, width: 80, color: buttonborder),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextButtonwidget(
                buttonText: "Sign in with password",
                buttonbgcolor: yellow,
                buttonborderRadius: 10,
                buttonheight: 60,
                buttontextcolor: white,
                buttonwidth: double.infinity,
                onTap: () async {
                  Get.to(const Signupscreen());
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account",
                    style: Textstyle.customstyle(grey, 13),
                  ),
                  TextButton(
                      child: Text(
                        "Sign up",
                        style: Textstyle.customstyle(red, 15),
                      ),
                      onPressed: () {
                        Get.to( ( const Signupscreen()));
                      }),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
