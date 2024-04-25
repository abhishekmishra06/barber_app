import 'package:flutter/material.dart';
import '../../../../const/const.dart';
import '../../../../utils/textstyle.dart';

class Upperportion extends StatelessWidget {
  const Upperportion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text("Welcome to", style: Textstyle.customstyle(black, 40)),
        Text(
          "Ryderz",
          style: Textstyle.customstyle(red, 40),
        ),
        SizedBox(
          height: SizeConfig.screenWidth * 0.020,
        ),
        Text("Your parcel delivered", style: Textstyle.customstyle(black, 20)),
        Text("fast at your doorstep.", style: Textstyle.customstyle(black, 20)),
      ],
    );
  }
}
