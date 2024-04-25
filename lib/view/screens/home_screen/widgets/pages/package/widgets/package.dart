import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../const/const.dart';
import '../../../../../../../utils/buttons_widget.dart';
import '../../../../homescreen.dart';
import '../../booking/pages/packagebook.dart';
import '../packagescreen.dart';

class Packagescreenwidget extends StatelessWidget {
  const Packagescreenwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NearbyLocation(
          buttontext: "See All",
          text: "Our Package",
          onpressed: () {
            Get.to(const Packagescreen());
          },
        ),
        Container(height: 1, width: double.infinity, color: buttonborder),
        const SizedBox(
          height: 20,
        ),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
        const SizedBox(height: 15),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
        const SizedBox(height: 15),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
        const SizedBox(height: 15),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
        const SizedBox(height: 15),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
        const SizedBox(height: 15),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
      ],
    );
  }
}

class Packagecards extends StatelessWidget {
  const Packagecards({
    super.key,
    required this.offerdetail,
    required this.imageUrl,
    required this.price,
    required this.offername,
  });
  final String offername;
  final String imageUrl;
  final String offerdetail;
  final double price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(());
      },
      child: Container(
        padding: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(44, 190, 190, 190),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              height: 130,
              width: 130,
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            offername,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          offerdetail,
                          style: const TextStyle(
                            fontSize: 14,
                            color: black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.currency_rupee,
                              size: 20, color: yellow),
                          Text(
                            price.toString(),
                            style: const TextStyle(
                                fontSize: 18,
                                color: yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                child: TextButtonwidget(
                                  buttonText: "Book Now",
                                  buttonbgcolor: yellow,
                                  buttonborderRadius: 50,
                                  buttonheight: 40,
                                  buttontextcolor: white,
                                  buttonwidth: 115,
                                  onTap: () {
                                    Get.to( packagebooking());
                                  },
                                ),
                              ) // TextButton(onPressed: (){}, child: Text("data"))
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget buildorders({
//   required double rating,
//   required String shopName,
//   required String location,
//   required String imageUrl,
//   required String duration,
//   required bool isBookmarked,
// }) {
//   return I
// }
