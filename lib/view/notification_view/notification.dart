import 'package:barber_app/utils/imports.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        itemCount: DummyData.notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(notification: DummyData.notifications[index]);
        },
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final notification;

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
                notification['date'],
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
                radius: 30,
                child: Icon(Icons.notifications),
              ),
              title: Text(
                notification['title'],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                notification['description'],
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
