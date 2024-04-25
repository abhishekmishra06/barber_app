import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../const/const.dart';
import '../../../../homescreen.dart';
import '../ourgallery.dart';

class ImageList extends StatelessWidget {
  const ImageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      // Add more image URLs as needed
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / 3.4;
    return SingleChildScrollView(
      child: Column(
        children: [
          NearbyLocation(
            buttontext: "See All",
            text: "Our Gallery",
            onpressed: () {
              Get.to(const Ourgallery());
            },
          ),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 5.0, // Adjust the spacing between images
            runSpacing: 5.0, // Adjust the spacing between rows
            children: imageUrls.map((url) {
              return GestureDetector(
                onTap: () {
                  // Add onTap functionality if needed
                },
                child: GestureDetector(
                  onTap: () {
                    _showImageDialog(context, url);
                  },
                  child: SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        url,
                        width: itemWidth,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            width: 300,
            height: 250,
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
