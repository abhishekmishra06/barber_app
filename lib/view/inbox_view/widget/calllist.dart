import 'package:barber_app/const/const.dart';
import 'package:barber_app/utils/components/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallListItem extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final bool isOutgoing;
  final DateTime date;

  const CallListItem({
    super.key,
    required this.imageUrl,
    required this.userName,
    required this.isOutgoing,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(userName),
        subtitle: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: isOutgoing ? Colors.green : Colors.blue,
                  borderRadius: BorderRadius.circular(4)),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Icon(
                  isOutgoing ? Icons.arrow_upward : Icons.arrow_downward,
                  size: 12,
                  color: white,
                ),
              ),
            ),
            // Icon(
            //   isOutgoing ? Icons.call_made : Icons.call_received,
            //   color: isOutgoing ? Colors.green : Colors.red,
            // ),
            const SizedBox(width: 5),
            Text(
              isOutgoing ? 'Outgoing' : 'Incoming',
            ),
            const SizedBox(width: 5),
            const Text(
              '|',
              style: Textstyle.black,
            ),
            const SizedBox(width: 5),

            Text(
              '${date.month} ${date.day},  ${date.year}',
            ),
          ],
        ),
        trailing: IconButton(
            onPressed: () {
              launch('tel:  6386444795');
            },
            icon: const Icon(
              Icons.call_outlined,
              color: yellow,
            )));
  }
}

class CallListPage extends StatelessWidget {
  const CallListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        String imageUrl = imageurl;
        String userName = "User $index";
        bool isOutgoing = index.isEven;
        DateTime date = DateTime.now().subtract(Duration(minutes: index));

        return CallListItem(
          imageUrl: imageUrl,
          userName: userName,
          isOutgoing: isOutgoing,
          date: date,
        );
      },
    );
  }
}
