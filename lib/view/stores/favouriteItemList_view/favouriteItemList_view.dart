import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const.dart';
import '../../../utils/components/favouriteItemCard.dart';

class FavouritItemList extends StatelessWidget {
  const FavouritItemList({super.key});

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
      body: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          children: [
            FavouriteItemCard(
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
    ));
  }
}
