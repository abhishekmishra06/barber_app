import 'package:barber_app/utils/imports.dart';
import 'package:barber_app/utils/validation.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  late final bool _passwordVisible = false;

  bool checkAllFieldsValid() {
    bool isValid = true;

    bool validate(bool Function() check) {
      if (isValid) {
        isValid = check();
      }
      return isValid;
    }

    validate(() => Validator.validateMobileNumber(
          phonenoController.text,
        ));
    validate(
        () => Validator.validatePassword(passwordController.text, context));
    return isValid;
  }

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
                "Phone no",
                style: Textstyle.hinttextcolor,
              ),
              const SizedBox(
                height: 10,
              ),
              Inputfield(
                  enforceDigitRestriction: true,
                  keyboardType: TextInputType.phone,
                  controller: phonenoController,
                  hinttext: "91+ 9654547845",
                  inputfieldIcon: const Icon(Icons.phone_android_outlined)),
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
                  enforceDigitRestriction: true,
                  range: 12,
                  controller: passwordController,
                  visible: _passwordVisible,
                  inputfieldIcon: const Icon(Icons.lock)),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: const Text(
                      "Forget password",
                      style: TextStyle(color: red),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextButtonwidget(
                buttonText: "Sign In",
                buttonbgcolor: yellow,
                buttonborderRadius: 10,
                buttonheight: 60,
                buttontextcolor: black,
                buttonwidth: double.infinity,
                onTap: () {
                  if (checkAllFieldsValid()) {
                    Get.to(const Phoneotpscreen());
                  }
                },
              ),
              const SizedBox(
                height: 20,
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
                    buttonIcon: const Icon(FontAwesomeIcons.google),
                    buttoniconcolor: red,
                    buttonheight: 60,
                    buttonwidth: 90,
                    buttonborderRadius: 10,
                    buttonbordercolor: buttonborder,
                    onTap: () async {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account ?",
                    style: Textstyle.customstyle(grey, 13),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const Signupscreen());
                    },
                    child: Text(
                      "Sign up",
                      style: Textstyle.customstyle(yellow, 15),
                    ),
                  ),
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
