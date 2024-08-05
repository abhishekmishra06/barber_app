import 'package:barber_app/utils/imports.dart';

class Bottomportion extends StatelessWidget {
  const Bottomportion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButtonwidget(
          buttonText: "Sign up",
          buttonbgcolor: const Color(0x2dd9d9d9),
          buttonborderRadius: 10,
          buttonheight: 60,
          buttontextcolor: white,
          buttonwidth: double.infinity,
          onTap: () async {},
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.02,  
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an Account",
              style: Textstyle.customstyle(white, 13),
            ),
            TextButton(
                child: Text(
                  "Login In",
                  style: Textstyle.customstyle(red, 15),
                ),
                onPressed: () {
                 }),
          ],
        ),
      ],
    );
  }
}
