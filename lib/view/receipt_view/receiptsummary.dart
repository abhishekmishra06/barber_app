import 'package:barber_app/utils/imports.dart';
import 'package:barber_app/view/receipt_view/final_e_receipt.dart';
 

 
class Receiptsummary extends StatelessWidget {
  const Receiptsummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Summary'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 15, bottom: 100),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: lightgrey,
                        borderRadius: BorderRadius.circular(15)),
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
                              "Barber/Salon",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "Barbarella Inova",
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
                              "Barber/Salon",
                              style: Textstyle.hinttextcolor,
                            ),
                            Text(
                              "Barbarella Inova",
                              style: Textstyle.black,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
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
                        const SizedBox(height: 15),
                        const Row(
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
                                          style:
                                              Textstyle.customstyle(yellow, 15),
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
                  buttonText: "Confirm Booking",
                  buttonbgcolor: yellow,
                  buttonborderRadius: 10,
                  buttonheight: 60,
                  buttontextcolor: black,
                  buttonwidth: double.infinity,
                  onTap: () {
                    showBookingSuccessDialog(context);
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

class BookingSuccessDialog extends StatelessWidget {
  const BookingSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      title: Column(
        children: [
          Image.asset(
            'assets/tick.png', // Change the image path as per your project structure
            width: 160,
            height: 130,
          ),
          const SizedBox(height: 8),
          Text(
            'Successful Booking',
            style: Textstyle.customstyle(yellow, 25),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your booking has been'),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' successfully done.'),
            ],
          ),
          const SizedBox(height: 16),
          TextButtonwidget(
            buttonText: "View E-Receipt",
            buttonbgcolor: yellow,
            buttonborderRadius: 10,
            buttonheight: 60,
            buttontextcolor: black,
            buttonwidth: double.infinity,
            onTap: () {
              Get.to(const FinalERecipt());
            },
          ),
          const SizedBox(height: 15),
          TextButtonwidget(
            buttonText: "Home",
            buttonbgcolor: yellow,
            buttonborderRadius: 10,
            buttonheight: 60,
            buttontextcolor: black,
            buttonwidth: double.infinity,
            onTap: () {
                    showFeedBackDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

void showBookingSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const BookingSuccessDialog();
    },
  );
}


