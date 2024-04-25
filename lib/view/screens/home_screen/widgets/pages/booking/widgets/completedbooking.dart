import 'package:barber_app/view/screens/home_screen/widgets/pages/booking/mybooking.dart';
import 'package:flutter/material.dart';

class Completedbooking extends StatelessWidget {
  const Completedbooking({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 10),
          CompleteItemcard(
            imageurl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            date: "Dec 22 2024 - 10:00 AM",
            description:
                "Aloe Vera shampoo Hair Wash",
            status: "Completed",
            title: 'Completed Order 1',
            location: 'Location 1',
          ),
          SizedBox(height: 15),
          CompleteItemcard(
            imageurl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            date: "Dec 22 2024 - 10:00 AM",
            description:
                "Aloe Vera shampoo Hair Wash",
            status: "Completed",
            title: 'Completed Order 2',
            location: 'Location 2',
          ),
          // Add more CompletedCancelledItem widgets for additional completed orders
        ],
      ),
    );
  }
}
