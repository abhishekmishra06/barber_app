import 'package:flutter/material.dart';
import '../../const/const.dart';
import 'textstyle.dart';

class RowListTile extends StatelessWidget {
  final String text;
  final Function()? onpressed;
  final String buttontext;
  const RowListTile(
      {super.key,
      required this.text,
      required this.onpressed,
      required this.buttontext});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Textstyle.customstyle(black, 16),
        ),
        TextButton(
          onPressed: onpressed,
          child: Text(
            buttontext,
            style: Textstyle.customstyle(yellow, 16),
          ),
        ),
      ],
    );
  }
}
