import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import '../../../const/const.dart';
import '../welcome_screen/welcome_screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
  
    Timer(const Duration(seconds: 5), () async {
      Get.offAll(
        const Welcomescreen1());



      //  check user is already login or not
      // bool isSignedIn = await GoogleSignInHelper().isUserSignedIn();
//  condition if login then homescreen else signup screen
      // isSignedIn
      // ? Get.offAll(const Personalinfoscreen())
      // : Get.offAll(const Welcomescreen1());
      // if (isSignedIn) {
      //   Get.offAll(const HomeScreen());
      // } else {
      //   Get.offAll(const Welcomescreen1());
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  yellow,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 25,
            left: 0,
            right: 0,
            child: const Center(
              child: Text(
                'SaLoN',
                style: TextStyle(
                  color: white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.white,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: SpinKitChasingDots(
                duration: Duration(milliseconds: 3000),
                color: Colors.white,
                size: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}