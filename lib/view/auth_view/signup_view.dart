import 'package:barber_app/utils/imports.dart';
import 'package:barber_app/utils/validation.dart';

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
    bool passwordmatch() {
      if (passwordController.text != confirmPasswordController.text) {
        setState(() {
          passwordsMatch = false;
        });
        return false;
      }
      return true;
    }

    bool checkAllFieldsValid() {
      bool isValid = true;

      bool validate(bool Function() check) {
        if (isValid) {
          isValid = check();
        }
        return isValid;
      }

      validate(() => Validator.validateEmail(
            emailController.text,
          ));

      validate(() => Validator.validateMobileNumber(
            phonenoController.text,
          ));

      validate(
          () => Validator.validatePassword(passwordController.text, context));
      validate(() =>
          Validator.validatePassword(confirmPasswordController.text, context));
      return isValid;
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
                height: 10,
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
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  hinttext: "krishna@gmail.com",
                  inputfieldIcon: const Icon(Icons.email)),
              const SizedBox(
                height: 10,
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
                  hinttext: "91+ 6385479525",
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
                height: 10,
              ),
              const Text(
                "Confirm Password",
                style: Textstyle.hinttextcolor,
              ),
              const SizedBox(
                height: 10,
              ),
              PasswordInputField(
                  enforceDigitRestriction: true,
                  range: 12,
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
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    "Term And Condition",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextButtonwidget(
                buttonText: "Sign Up",
                buttonbgcolor: yellow,
                buttonborderRadius: 10,
                buttonheight: 60,
                buttontextcolor: black,
                buttonwidth: double.infinity,
                onTap: () {
                  if (checkAllFieldsValid()) {
                    if (passwordmatch()) {
                      Get.to(const Phoneotpscreen());
                    }
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
