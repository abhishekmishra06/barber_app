import 'package:flutter/material.dart';

import '../mybooking.dart';

class Upcomingbooking extends StatelessWidget {
  const Upcomingbooking({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpComingItemcard(
              imageurl:
                  "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              date: "Dec 22 2024-10:00 AM",
              description: "Ouiff Haircut, Thin Shaving",
              status: true,
              title: 'Upcoming Order 1',
              location: 'Location 1',
            ),
            SizedBox(height: 20),
            UpComingItemcard(
              imageurl:
                  "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              date: "Dec 22 2024-10:00 AM",
              description: "Ouiff Haircut, Thin Shaving",
              status: false,
              title: 'Upcoming Order 2',
              location: 'Location 2',
            ),
            SizedBox(height: 20),
            UpComingItemcard(
              imageurl:
                  "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              date: "Dec 22 2024-10:00 AM",
              description: "Ouiff Haircut, Thin Shaving",
              status: false,
              title: 'Upcoming Order 2',
              location: 'Location 2',
            ),
          ],
        ),
      ),
    );
  }
}
