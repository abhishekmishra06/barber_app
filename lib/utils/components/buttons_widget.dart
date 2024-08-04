import 'package:barber_app/utils/components/imports.dart';


// text button
class TextButtonwidget extends StatelessWidget {
  const TextButtonwidget({
    super.key,
    required this.buttonText,
    required this.onTap,
    required this.buttonheight,
    required this.buttonwidth,
    required this.buttonbgcolor,
    required this.buttontextcolor,
    required this.buttonborderRadius,
  });
  final String buttonText;
  final Function()? onTap;
  final double buttonheight;
  final double buttonwidth;
  final Color buttonbgcolor;
  final Color buttontextcolor;
  final double buttonborderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      width: buttonwidth,
      child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(buttonborderRadius)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(buttonborderRadius),
                ),
              ),
              onPressed: onTap,
              child: Text(
                buttonText,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w800,
                  color: buttontextcolor,
                ),
              ))),
    );
  }
}

// icon button
class IconButtonwidget extends StatelessWidget {
  const IconButtonwidget({
    super.key,
    required this.buttonIcon,
    required this.onTap,
    required this.buttonheight,
    required this.buttonwidth,
    required this.buttonbordercolor,
    required this.buttoniconcolor,
    required this.buttonborderRadius,
    this.buttontext,
  });

  final Icon buttonIcon;
  final Function()? onTap;
  final double buttonheight;
  final double buttonwidth;
  final String? buttontext;
  final double buttonborderRadius;
  final Color buttoniconcolor;
  final Color buttonbordercolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      width: buttonwidth,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: buttonbordercolor),
              textStyle:
                  const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(buttonborderRadius)))),
          onPressed: () {
            onTap;
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                buttonIcon.icon,
                color: buttoniconcolor,
                size: 25,
              ),
              buttontext != null
                  ? const SizedBox(
                      width: 10,
                    )
                  : const SizedBox(
                      width: 0,
                    ),
              Text(
                buttontext != null ? buttontext! : "",
                style: const TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w800,
                  color: black,
                ),
              )
            ],
          )),
    );
  }
}

// outline button
class Outlinebutton extends StatelessWidget {
  const Outlinebutton(
      {super.key,
      required this.buttontext,
      required this.onTap,
      required this.buttonbordercolor,
      required this.buttonborderRadius,
      this.buttonbgcolor,
      this.buttontextcolor});

  final Function() onTap;
  final String buttontext;
  final double buttonborderRadius;
  final Color buttonbordercolor;
  final Color? buttonbgcolor;
  final Color? buttontextcolor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonbgcolor,
          side: BorderSide(color: buttonbordercolor),
          textStyle: const TextStyle(
            fontSize: 15,
            fontFamily: "Inter",
          ),
        ),
        onPressed: onTap,
        child: Text(
          buttontext,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.bold,
            color: buttontextcolor ?? yellow,
          ),
        ));
  }
}

// IconButtonWithName widget
class IconButtonWithName extends StatelessWidget {
  final IconData icon;
  final String name;
  final Function()? ontap;

  const IconButtonWithName(
      {super.key, required this.icon, required this.name, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 20,
            backgroundColor: lightyellow,
            child: IconButton(
                onPressed: ontap,
                icon: Icon(
                  icon,
                  color: yellow,
                ))),
        Text(name),
      ],
    );
  }
}
