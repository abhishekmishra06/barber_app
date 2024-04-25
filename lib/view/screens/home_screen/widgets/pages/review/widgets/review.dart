import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../../../../const/const.dart';
import '../../../../../../../utils/textstyle.dart';
import '../reviewscreen.dart';

class Reviewscreencard extends StatelessWidget {
  const Reviewscreencard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(44, 190, 190, 190),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'), // Replace with user's image
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Abhishek Mishra', // Replace with user's name
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color:
                                            yellow), // Change border color here
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)))),
                                onPressed: () {},
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      color: yellow,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: yellow,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Great service!',
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              IconButton(
                icon: const Icon(FontAwesomeIcons.heart),
                onPressed: () {},
              ),
              const Text('12'),
              const SizedBox(width: 25.0),
              const Text(
                '2 hours ago',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star_half,
                  color: yellow,
                ),
                Text(
                  "4.8(32 reviews)",
                  style: Textstyle.customstyle(black, 16),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Get.to(const Reviewscreen());
              },
              child: Text(
                "See All",
                style: Textstyle.customstyle(yellow, 16),
              ),
            ),
          ],
        ),
        Container(height: 1, width: double.infinity, color: buttonborder),
        const SizedBox(
          height: 20,
        ),
        const Reviewscreencard(),
        const SizedBox(height: 15),
        const Reviewscreencard(),
        const SizedBox(height: 15),
        const Reviewscreencard(),
        const SizedBox(height: 15),
        const Reviewscreencard(),
        const SizedBox(height: 15),
        const Reviewscreencard(),
        const SizedBox(height: 15),
        const Reviewscreencard(),
        const SizedBox(height: 15),
      ],
    );
  }
}
