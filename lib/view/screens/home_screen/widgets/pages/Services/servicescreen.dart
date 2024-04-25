import 'package:flutter/material.dart';

import '../../../../../../const/const.dart';
import 'widgets/services.dart';

class Servicescreen extends StatelessWidget {
  const Servicescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          leading: const BackButton(
            color: Colors.black,
          ),
          elevation: 2,
          title: const Text('Our Services'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: [
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
            ],),
          ),
        ),
        );
  }
}