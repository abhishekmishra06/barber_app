import 'package:barber_app/controller/controller.dart';
import 'package:barber_app/utils/components/image_carousel.dart';
import 'package:barber_app/view/mostpopular_shop_view/mostpopular.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../const/const.dart';
import '../../dummy_data/dummy_data.dart';
import '../../utils/components/salon_ card.dart';
import '../../utils/components/book_mark.dart';
import '../../utils/components/buttons_widget.dart';
import '../../utils/components/inputfield.dart';
import '../../utils/components/row_list_tile.dart';
import '../../utils/components/textstyle.dart';
import '../filter_view/filter.dart';
import '../bookmark_view/mybookmark.dart';
import '../nearlocation_shop_view/nearlocation.dart';
import '../notification_view/notification.dart';
import '../profile_view/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> buttonLabels = [
    "All",
    "Haircuts",
    "Make up",
    "Beauty",
    "Face"
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(
                    const Profile(),
                  );
                },
                child: CircleAvatar(
                  radius: 17,
                  child: Image.asset(
                    "assets/logo.png",
                  ),
                ),
              ),
              const SizedBox(width: 15),
              const Text("Salon"),
            ],
          ),
          backgroundColor: white,
          actions: [
            IconButton(
              icon: Badge.count(
                count: 3,
                backgroundColor: yellow,
                child: const Icon(
                  Icons.notifications,
                  color: grey,
                ),
              ),
              onPressed: () {
                Get.to(NotificationPage());
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.bookmark_border,
                color: grey,
              ),
              onPressed: () {
                Get.to(const Bookmark());
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GreetingMessage(),
              const SizedBox(height: 20),
              Searchbox(
                  controller: emailController,
                  hinttext: "Search",
                  inputfieldIcon: const Icon(Icons.search),
                  suffixicon: const Icon(Icons.filter_list),
                  onicontap: () {
                    showform(context);
                  }),
              const SizedBox(height: 20),
              ImageCarousel(imageUrls: DummyData.imageUrls),
              const SizedBox(height: 20),
              const IconButtonsRow(),
              const SizedBox(height: 20),
              Container(height: 1, width: double.infinity, color: buttonborder),
              RowListTile(
                buttontext: "See All",
                text: "Nearby your location",
                onpressed: () {
                  Get.to(const Nearlocation());
                },
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: buttonLabels.map((label) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Outlinebutton(
                        buttonborderRadius: 10,
                        buttonbordercolor: yellow,
                        buttontext: label,
                        onTap: () {},
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: DummyData.bookmarks.length,
                itemBuilder: (context, index) {
                  final order = DummyData.bookmarks[index];
                  return Column(
                    children: [
                      SalonCard(
                        duration: order.duration,
                        imageUrl: order.imageUrl,
                        onBookmarkIcon: () {
                          showRemoveBookmarkDialog(context, order);
                        },
                        shopName: order.shopName,
                        location: order.location,
                        rating: order.rating,
                      ),
                      const SizedBox(height: 15),
                    ],
                  );
                },
              ),
              RowListTile(
                buttontext: "See All",
                text: "Most Popular",
                onpressed: () {
                  Get.to(const Mostpupular());
                },
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: buttonLabels.map((label) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Outlinebutton(
                        buttonborderRadius: 10,
                        buttonbordercolor: yellow,
                        buttontext: label,
                        onTap: () {},
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: DummyData.bookmarks.length,
                itemBuilder: (context, index) {
                  final order = DummyData.bookmarks[index];
                  return Column(
                    children: [
                      SalonCard(
                        duration: order.duration,
                        imageUrl: order.imageUrl,
                        onBookmarkIcon: () {
                          showRemoveBookmarkDialog(context, order);
                        },
                        shopName: order.shopName,
                        location: order.location,
                        rating: order.rating,
                      ),
                      const SizedBox(height: 15),
                    ],
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class GreetingMessage extends StatelessWidget {
  const GreetingMessage({super.key});

  @override
  Widget build(BuildContext context) {
    String greeting = _getGreeting();
    String username = "Abhishek";
    return Text(
      "$greeting, $username",
      style: Textstyle.customstyle(black, 20),
    );
  }

  String _getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good morning";
    } else if (hour < 17) {
      return "Good afternoon";
    } else {
      return "Good evening";
    }
  }
}

class IconButtonsRow extends StatelessWidget {
  const IconButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWithName(icon: Icons.style, name: "Style"),
        IconButtonWithName(icon: Icons.abc, name: "Beauty"),
        IconButtonWithName(icon: Icons.face, name: "Facial"),
        IconButtonWithName(icon: Icons.spa, name: "Massage"),
        IconButtonWithName(icon: Icons.brush, name: "Makeup"),
        IconButtonWithName(icon: Icons.content_cut, name: "Haircuts"),
      ],
    );
  }
}
