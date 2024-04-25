import 'package:barber_app/view/screens/home_screen/widgets/pages/booking/mybooking.dart';
import 'package:flutter/material.dart';

import '../../../../../../../const/const.dart';

class Bookingcancel extends StatelessWidget {
  const Bookingcancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 1, width: double.infinity, color: buttonborder),

          const Text(
            'Cancelled Orders',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const CancelledItemcard(
            imageurl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            date: "Dec 22 2024 - 10:00 AM",
            description: "Aloe Vera shampoo Hair Wash",
            status: "Cancled",
            title: 'Cancelled Order 1',
            location: 'Location 1',
          ),
          const SizedBox(height: 15),
          const CancelledItemcard(
            imageurl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            date: "Dec 22 2024 - 10:00 AM",
            description: "Aloe Vera shampoo Hair Wash",
            status: "Cancled",
            title: 'Cancelled Order 2',
            location: 'Location 2',
          ),
          // Add more CompletedCancelledItem widgets for additional cancelled orders
        ],
      ),
    );
  }
}
