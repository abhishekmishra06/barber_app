import 'package:barber_app/utils/components/imports.dart';


void showform(BuildContext context) {
  final List<String> buttonLabels = [
    "All",
    "Haircuts",
    "Make up",
    "Beauty",
    "Face"
  ];
  showModalBottomSheet<void>(
    elevation: 2,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.60,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      width: 80,
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                        thickness: 3,
                        indent: 5,
                        endIndent: 5,
                      )),
                  const Text(
                    'Filter',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 1,
                            width: double.infinity,
                            color: buttonborder),
                        const SizedBox(height: 16.0),
                        Text(
                          'Category',
                          style: Textstyle.customstyle(black, 18),
                        ),
                        const SizedBox(height: 16.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: buttonLabels.map((label) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Outlinebutton(
                                  buttonborderRadius: 10,
                                  buttonbordercolor: yellow,
                                  buttontext: label,
                                  onTap: () {},
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text('Rating', style: Textstyle.customstyle(black, 18)),
                        const SizedBox(height: 16.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: buttonLabels.map((label) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Outlinebutton(
                                  buttonborderRadius: 10,
                                  buttonbordercolor: yellow,
                                  buttontext: label,
                                  onTap: () {},
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text('Distance',
                            style: Textstyle.customstyle(black, 18)),
                        const SizedBox(height: 16.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: buttonLabels.map((label) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Outlinebutton(
                                  buttonborderRadius: 10,
                                  buttonbordercolor: yellow,
                                  buttontext: label,
                                  onTap: () {},
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                            height: 1,
                            width: double.infinity,
                            color: buttonborder),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButtonwidget(
                              buttonText: "Reset",
                              buttonbgcolor: lightyellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButtonwidget(
                              buttonText: "Apply Filter",
                              buttonbgcolor: yellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
