import 'package:barber_app/utils/components/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const.dart';
import '../../messagescreen/messagescreen.dart';

class ChatListItem extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final String message;
  final int unreadCount;
  final String time;

  const ChatListItem({
    super.key,
    required this.imageUrl,
    required this.userName,
    required this.message,
    required this.unreadCount,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     Container(
        //         padding: const EdgeInsets.only(left: 15,right: 15),
        //         decoration: BoxDecoration(
        //           color:white,
        //           borderRadius: BorderRadius.circular(15),
        //         ),
        //         child: Row(
        //           children: [
        //             CircleAvatar(
        //               radius: 23,
        //               backgroundImage: NetworkImage(imageUrl),
        //             ),
        //             const SizedBox(
        //               width: 15,
        //             ),
        //             Expanded(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Row(
        //                     children: [
        //                       Text(
        //                         userName,
        //                         style: Textstyle.black,
        //                       ),
        //                       const Spacer(),
        //                 Padding(
        //                   padding: const EdgeInsets.only(right: 20),
        //                   child: Row(
        //                     children: [
        //                     Badge.count(
        //   backgroundColor: yellow,
        //       count: 1,
        //       // child: const Icon(Icons.notifications),
        //     ),
        //                     ],
        //                   ),
        //                 ),
        //                     ],
        //                   ),
        //                   Row(
        //                     children: [
        //                                Text(message),

        //                       const Spacer(),
        //                 Padding(
        //                   padding: const EdgeInsets.only(right: 20),
        //                   child: Row(
        //                     children: [
        //                             Text(time),
        //                     ],
        //                   ),
        //                 ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         )),
        //     const SizedBox(
        //       height: 20,
        //     )
        //   ],
        // );

        InkWell(
      onTap: () {
        Get.to(const ChatScreen());
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          userName,
          style: Textstyle.black,
        ),
        subtitle: Row(
          children: [
            Text(
              message,
              style: TextStyle(fontSize: 12),
            ),
            const Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ))
          ],
        ),
        trailing: Column(
          children: [
            Badge.count(
              backgroundColor: yellow,
              count: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(time),
          ],
        ),
      ),
    );
  }
}

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Number of chat items
      itemBuilder: (context, index) {
        String imageUrl = imageurl;
        String userName = "User $index";
        String message = "Message $index";
        int unreadCount = index;
        String time = "12:00 PM";

        return ChatListItem(
          imageUrl: imageUrl,
          userName: userName,
          message: message,
          unreadCount: unreadCount,
          time: time,
        );
      },
    );
  }
}
