import 'package:barber_app/utils/components/textstyle.dart';
import 'package:barber_app/view/productDetail_view/productDetail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/const.dart';


class FavouriteItemCard extends StatelessWidget {
  final double rating;
  final String shopName;
  final String location;
  final String imageUrl;
  final String duration;

  const FavouriteItemCard({
    required this.rating,
    required this.shopName,
    required this.location,
    required this.imageUrl,
    required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const ProductDetailPage());
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5, // Provides the shadow effect
        child: Container(
          padding: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 120,
                padding: const EdgeInsets.all(5),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          shopName,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: GestureDetector(
                            child: const Icon(
                              Icons.delete_outline_outlined,
                              color: black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$2232',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '\$2323',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: yellow),
                              ),
                            ],
                          ),
                          GestureDetector(
                            child: Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: yellow),
                              child: Center(
                                  child: Text(
                                "+Cart",
                                style: Textstyle.customstyle(white, 15),
                              )),
                            ),
                          )
                          // TextButtonwidget(
                          //   buttonText: "Cart",
                          //   buttonbgcolor: yellow,
                          //   buttonborderRadius: 15,
                          //   buttonheight: 35,
                          //   buttontextcolor: white,
                          //   buttonwidth: 80,
                          //   onTap: () {},
                          // )
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
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
