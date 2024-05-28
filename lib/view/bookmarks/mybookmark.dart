import 'package:flutter/material.dart';
import '../../const/const.dart';
import '../../utils/components/buttons_widget.dart';
import '../home_screen/homescreen.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

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
          title: const Text('My Bookmarks'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const OutlineButtonsRow(),
                const SizedBox(height: 20), // Space

                buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Sereniy',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Belle One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Curls One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
              ],
            ),
          ),
        ));
  }
}

void removebookmark(BuildContext context) {
  showModalBottomSheet<void>(
    elevation: 2,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      width: 80,
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                        thickness: 3,
                        indent: 5,
                        endIndent: 5,
                      )),
                  const Text(
                    'Remove from Bookmark?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 1,
                            width: double.infinity,
                            color: buttonborder),
                        const SizedBox(height: 16.0),
                        buildorders(
                          duration: '10 min',
                          imageUrl:
                              'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          onbookmarkicon: () {},
                          shopName: 'Belle One',
                          location: '123 Street, City',
                          rating: 4.5,
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButtonwidget(
                              buttonText: "Cancel",
                              buttonbgcolor: lightyellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButtonwidget(
                              buttonText: "Yes, Remove",
                              buttonbgcolor: yellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
