import 'package:barber_app/const/const.dart';
import 'package:barber_app/utils/components/textstyle.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: "Payment Successful!",
      description: "You have make a salon payment",
      date: "Today",
    ),
    NotificationItem(
      title: "New Services Available!",
      description: "Now you can search the nearest salon",
      date: "Yesterday",
    ),
    NotificationItem(
      title: "New Services Available!",
      description: "Now you can search the nearest salon",
      date: "March 07, 2024",
    ),
    // Add more notifications as needed
  ];

  NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          leading: const BackButton(
            color: Colors.black,
          ),
          elevation: 2,
          title: const Text('Notifications'),
        ),
        body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return NotificationCard(notification: notifications[index]);
          },
        ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                notification.date,
                style: Textstyle.customstyle(black, 19),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                radius:
                    30, // Adjust the radius to make the circular image larger

                child: Icon(Icons.notifications),
              ),
              title: Text(
                notification.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                notification.description,
                style: const TextStyle(color: black, fontSize: 15),
              ),
              // trailing: Text(
              //   notification.date,
              //   style: const TextStyle(fontSize: 14),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String description;
  final String date;

  NotificationItem({
    required this.title,
    required this.description,
    required this.date,
  });
}
