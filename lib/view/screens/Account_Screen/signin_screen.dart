import 'package:barber_app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../const/const.dart';
import '../../../utils/buttons_widget.dart';
import '../../../utils/inputfield.dart';
import '../../../utils/textstyle.dart';
import 'phoneno_verification/phonenoverificationscreen.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  late final bool _passwordVisible = false;

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
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text("SaLoN",
                      style: TextStyle(
                          color: black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign in to your account",
                      style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Email",
                style: Textstyle.hinttextcolor,
              ),
              const SizedBox(
                height: 10,
              ),
              Inputfield(
                  controller: emailController,
                  hinttext: "krishna@gmail.com",
                  inputfieldIcon: const Icon(Icons.email)),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password",
                style: Textstyle.hinttextcolor,
              ),
              const SizedBox(
                height: 10,
              ),
              PasswordInputField(
                  controller: passwordController,
                  visible: _passwordVisible,
                  inputfieldIcon: const Icon(Icons.lock)),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget password",
                        style: TextStyle(color: red),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextButtonwidget(
                buttonText: "Sign In",
                buttonbgcolor: yellow,
                buttonborderRadius: 10,
                buttonheight: 60,
                buttontextcolor: black,
                buttonwidth: double.infinity,
                onTap: () {
                  Get.to(const Phonenoverificationscreen());
                },
              ),
              const SizedBox(
                height: 60,
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButtonwidget(
                    buttonIcon: const Icon(FontAwesomeIcons.facebook),
                    buttoniconcolor: blue,
                    buttonheight: 60,
                    buttonwidth: 90,
                    buttonborderRadius: 10,
                    buttonbordercolor: buttonborder,
                    onTap: () async {},
                  ),
                  IconButtonwidget(
                    buttonIcon: const Icon(FontAwesomeIcons.google),
                    buttoniconcolor: red,
                    buttonheight: 60,
                    buttonwidth: 90,
                    buttonborderRadius: 10,
                    buttonbordercolor: buttonborder,
                    onTap: () async {},
                  ),
                  IconButtonwidget(
                    buttonIcon: const Icon(FontAwesomeIcons.apple),
                    buttoniconcolor: black,
                    buttonheight: 60,
                    buttonwidth: 90,
                    buttonborderRadius: 10,
                    buttonbordercolor: buttonborder,
                    onTap: () async {},
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account ?",
                    style: Textstyle.customstyle(grey, 13),
                  ),
                  TextButton(
                      child: Text(
                        "Sign up",
                        style: Textstyle.customstyle(yellow, 15),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
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
