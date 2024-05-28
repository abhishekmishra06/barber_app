import 'package:barber_app/const/const.dart';
import 'package:barber_app/utils/components/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/components/buttons_widget.dart';

class FinalE_recipt extends StatelessWidget {
  const FinalE_recipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Receipt'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
     padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 15, bottom: 100),              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: lightgrey, borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Barber/Salon",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "Barbarella Inova",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Address",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "Barbarella Inova",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Name",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "Barbarella Inova",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phone",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "+91 9000000000",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Booking Date",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "December 23,2024",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Booking Hours",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "10:00 AM",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Specialist",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "Nathan Alexander",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: lightgrey,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Haircut (quiff)",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "65",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hair Wash(Aloe vera shampoo)",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "85",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shaving (Thin Shaving)",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "656",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Container(
                            height: 1,
                            width: double.infinity,
                            color: buttonborder),
                        const SizedBox(height: 15),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "121.00",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          color: lightgrey,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(3),
                                    child: Container(
                                      width: 60,
                                      height: 35,
                                      color: Colors.grey,
                                      child: Image.network(
                                        "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    ".... .... .... 4657",
                                    style: Textstyle.customstyle(black, 17),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Paid",
                                          style: Textstyle.customstyle(yellow, 15),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                color: Colors.white,
                child: TextButtonwidget(
                  buttonText: "Download E-Receipt",
                  buttonbgcolor: yellow,
                  buttonborderRadius: 10,
                  buttonheight: 60,
                  buttontextcolor: black,
                  buttonwidth: double.infinity,
                  onTap: () {
                    Get.to( ());
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
