import 'package:flutter/material.dart';
import 'textstyle.dart';
import '../../const/const.dart';

class Listwidget extends StatelessWidget {
  const Listwidget(
      {super.key,
      required this.text,
      required this.firsticon,
      required this.lasticon,
      required this.ontap,
      required this.lasticoncolor,
      this.firsticoncolor});
  final String text;
  final IconData firsticon;
  final IconData lasticon;
  final Function ontap;
  final Color lasticoncolor;
  final Color? firsticoncolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(44, 190, 190, 190),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(firsticon,
                size: 25,
                color: firsticoncolor != null ? black : firsticoncolor),
            const SizedBox(width: 10),
            Text(
              text,
              style: Textstyle.customstyle(black, 15),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  lasticon,
                  color: lasticoncolor,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
