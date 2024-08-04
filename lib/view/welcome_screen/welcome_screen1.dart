 import 'package:barber_app/utils/components/imports.dart';

class Welcomescreen1 extends StatefulWidget {
  const Welcomescreen1({super.key});

  @override
  State<Welcomescreen1> createState() => _Welcomescreen1State();
}

class _Welcomescreen1State extends State<Welcomescreen1> {
  TextEditingController passworddcontroller = TextEditingController();
  int clickCount = 0;
  bool isSectionExpired = true;
  bool passwordsMatch = true;

  @override
  void initState() {
    super.initState();
    // _loadSectionExpired().then((value) {
    //   if (isSectionExpired) {
    //     _showExpirationAlert();
    //   } else {
    //     _loadClickCount();
    //   }
    // });
  }

  // Future<void> _loadSectionExpired() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     isSectionExpired = prefs.getBool('isSectionExpired') ?? false;
  //   });
  // }

  // void _loadClickCount() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     clickCount = prefs.getInt('clickCount') ?? 0;
  //   });
  // }

  // void _handleButtonClick() async {
  //   setState(() async {
  //     clickCount++;
  //     if (clickCount >= 5 || isSectionExpired) {
  //       SharedPreferences prefs = await SharedPreferences.getInstance();

  //       _showExpirationAlert();
  //       prefs.setBool('isSectionExpired', true);
  //     } else {
  //       Get.to(const Signinscreen());
  //     }
  //   });

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setInt('clickCount', clickCount);
  // }

  // void password() {
  //   if (passworddcontroller.text.toString() == "1234") {
  //     Get.to(const Signinscreen());
  //   } else {
  //     setState(() {
  //       passwordsMatch = false;
  //     });
  //   }
  // }

  // void _showExpirationAlert() {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Column(
  //           children: [
  //             Text(
  //               'Required Password',
  //             ),
  //             Text(
  //               'Enter 4 digit password',
  //               style: TextStyle(fontSize: 15),
  //             ),
  //           ],
  //         ),
  //         content: SizedBox(
  //           height: 100,
  //           child: Column(
  //             children: [
  //               Inputfield(
  //                   controller: passworddcontroller,
  //                   hinttext: "Enter password",
  //                   inputfieldIcon: const Icon(Icons.email)),
  //               if (!passwordsMatch)
  //                 const Padding(
  //                   padding: EdgeInsets.symmetric(vertical: 8.0),
  //                   child: Text(
  //                     "Passwords do not match",
  //                     style: TextStyle(color: Colors.red),
  //                   ),
  //                 ),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               TextButton(
  //                 style: const ButtonStyle(
  //                     backgroundColor: WidgetStatePropertyAll(yellow)),
  //                 child: const Text(
  //                   'Continue',
  //                   style: TextStyle(color: white),
  //                 ),
  //                 onPressed: () {
  //                   password();
  //                 },
  //               ),
  //               TextButton(
  //                 style: const ButtonStyle(
  //                     backgroundColor: WidgetStatePropertyAll(yellow)),
  //                 child: const Text(
  //                   'Contact us',
  //                   style: TextStyle(color: white),
  //                 ),
  //                 onPressed: () {
  //                   var whatsappUrl = "whatsapp://send?phone=91+6386444795"
  //                       "&text=${Uri.encodeComponent("I want to restart this app")}";
  //                   try {
  //                     launch(whatsappUrl);
  //                   } catch (e) {
  //                     log(e as String);
  //                   }
  //                 },
  //               ),
  //             ],
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/welcom.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Welcome to ",
                          style: Textstyle.customstyle(white, 40)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "SaLoN",
                        style: Textstyle.customstyle(yellow, 35),
                      ),
                    ],
                  ),
                  TextButtonwidget(
                    buttonText: "Countinue",
                    buttonbgcolor: yellow,
                    buttonborderRadius: 10,
                    buttonheight: 60,
                    buttontextcolor: white,
                    buttonwidth: double.infinity,
                    onTap: () async {
                      Get.to(const Signinscreen());

// for password
                      // _handleButtonClick();
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
