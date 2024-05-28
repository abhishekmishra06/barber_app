import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../const/const.dart';
import '../../../controller/controller.dart';
import '../../../utils/components/buttons_widget.dart';
import '../../../utils/components/inputfield.dart';
import '../../../utils/components/textstyle.dart';
import '../signin_view/signin_screen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  late final bool _passwordVisible = false;
  late final bool _confirmpasswordVisible = false;
  bool passwordsMatch = true;
  @override
  Widget build(BuildContext context) {
    void passwordmatch() {
      if (passwordController.text != confirmPasswordController.text) {
        setState(() {
          passwordsMatch = false;
        });
        return;
      }
    }

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
                    color: yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("SaLon",
                      style: TextStyle(
                          color: black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign up to your account",
                      style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 20,
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
                height: 10,
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
                height: 15,
              ),
              const Text(
                "Confirm Password",
                style: Textstyle.hinttextcolor,
              ),
              const SizedBox(
                height: 10,
              ),
              PasswordInputField(
                  controller: confirmPasswordController,
                  visible: _confirmpasswordVisible,
                  inputfieldIcon: const Icon(Icons.lock)),
              if (!passwordsMatch)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Passwords do not match",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: true,
                    onChanged: Value(false).call,
                    checkColor: white,
                    activeColor: yellow,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextButtonwidget(
                buttonText: "Sign Up",
                buttonbgcolor: yellow,
                buttonborderRadius: 10,
                buttonheight: 60,
                buttontextcolor: black,
                buttonwidth: double.infinity,
                onTap: () {
                  passwordmatch();
                  Get.to(const Signinscreen());

                  // log(passwordController.text);
                  // log(emailController.text);
                  // signup();
                  // Get.to(const Emailverification());
                },
              ),
              const SizedBox(
                height: 50,
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
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account ?",
                    style: Textstyle.customstyle(grey, 13),
                  ),
                  TextButton(
                      child: Text(
                        "Sign In",
                        style: Textstyle.customstyle(yellow, 15),
                      ),
                      onPressed: () {
                        Get.to(const Signinscreen());
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
