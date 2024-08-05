import 'package:barber_app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../const/const.dart';
import '../../utils/components/inputfield.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
             },
          ),
          title: const Row(
            children: [
              Text("Abhishek"),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  launch('tel:  100');
                },
                icon: const Icon(Icons.call_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(
                          top: 3, right: 10, bottom: 3, left: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(144, 218, 217, 217),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Center(child: Text("Yesterday")))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    _buildMessage(
                        isSent: true,
                        message: "Hi, good morning",
                        time: "10:00 AM"),
                    _buildMessage(
                        isSent: false,
                        message: "We are always open at all time",
                        time: "10:01 AM"),
                    _buildMessage(
                        isSent: false,
                        message: "so you can come according to your free time",
                        time: "10:01 AM"),
                    _buildMessage(
                        isSent: true,
                        message: "I will come this afternoon around 4",
                        time: "10:00 AM"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(
                                top: 3, right: 10, bottom: 3, left: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(144, 218, 217, 217),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Center(child: Text("Today")))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildMessage(
                        isSent: true,
                        message: "Hi HOw are you",
                        time: "10:00 AM"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Inputfield(
                      controller: emailController,
                      hinttext: "Type a message...",
                      inputfieldIcon: const Icon(Icons.text_fields),
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: yellow,
                      child: IconButton(
                        icon: const Icon(
                          Icons.send,
                          color: white,
                        ),
                        onPressed: () {},
                      ),
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

  Widget _buildMessage(
      {required bool isSent, required String message, required String time}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment:
            isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSent ? yellow : lightgrey,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        message,
                        style: TextStyle(
                          color: isSent ? white : black,
                        ),
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: isSent ? Colors.white70 : black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
