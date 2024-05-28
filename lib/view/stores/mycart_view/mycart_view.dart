import 'package:barber_app/utils/components/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../const/const.dart';
import '../../../utils/components/addToCartCard.dart';
import '../../../utils/components/buttons_widget.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Card(
                color: yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 5,
                child: const SizedBox(
                  width: 40,
                  height: 40,
                  child: Center(
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            const Text("Favorite Item List"),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Column(
                children: [
                  AddToCartCard(
                    duration: '10 min',
                    imageUrl:
                        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    shopName: 'Salon One',
                    location: '123 Street, City',
                    rating: 4.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AddToCartCard(
                    duration: '10 min',
                    imageUrl:
                        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    shopName: 'Salon One',
                    location: '123 Street, City',
                    rating: 4.5,
                  )
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub Total'),
                        Text(
                          '23232',
                          style: Textstyle.customstyle(black, 15),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Shiping'),
                        Text('23', style: Textstyle.customstyle(black, 15)),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total'),
                        Text('23232', style: Textstyle.customstyle(black, 15)),
                      ],
                    ),
                    Divider(),
                    TextButtonwidget(
                      buttonText: "Checkout",
                      buttonbgcolor: lightyellow,
                      buttonborderRadius: 10,
                      buttonheight: 60,
                      buttontextcolor: white,
                      buttonwidth: double.infinity,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
