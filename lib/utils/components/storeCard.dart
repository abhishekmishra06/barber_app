import 'package:barber_app/const/const.dart';
import 'package:barber_app/view/stores/favouriteItemList_view/favouriteItemList_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/stores/mycart_view/mycart_view.dart';

class StoreCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final double originalPrice;
  final double discountedPrice;
  final Function onPressed;

  StoreCard({
    required this.imageUrl,
    required this.title,
    required this.category,
    required this.originalPrice,
    required this.discountedPrice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(); 
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                   Positioned(
                    top: 10,
                    right: 10,
                    child:IconButton(
                            onPressed: () {
                              Get.to(FavouritItemList());
                            },
                            icon: const Icon(
                              Icons.favorite_border,
                              color: white,
                            ),
                          ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4, bottom: 8.0, left: 8.0, right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      category,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$$originalPrice',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '\$$discountedPrice',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: yellow),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
