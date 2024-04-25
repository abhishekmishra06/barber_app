import 'package:barber_app/utils/textstyle.dart';
import 'package:barber_app/view/screens/home_screen/widgets/pages/bookmarks/mybookmark.dart';
import 'package:barber_app/view/screens/home_screen/widgets/pages/aboutshop/aboutshop.dart';
import 'package:barber_app/view/screens/home_screen/widgets/pages/gallery/widgets/gallery.dart';
import 'package:barber_app/view/screens/home_screen/widgets/pages/Services/widgets/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../const/const.dart';
import '../../../../../../controller/getxcontroller.dart';
import '../../../../../../utils/buttons_widget.dart';
import '../../../homescreen.dart';
import '../messagescreen/messagescreen.dart';
import '../nearlocation/nearlocation.dart';
import '../package/widgets/package.dart';
import '../review/widgets/review.dart';

class Shopdetailscreen extends StatefulWidget {
  const Shopdetailscreen({super.key});

  @override
  State<Shopdetailscreen> createState() => _ShopdetailscreenState();
}

class _ShopdetailscreenState extends State<Shopdetailscreen> {
  final Getxcontroll _controller = Get.put(Getxcontroll());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      // Add back button functionality here
                    },
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.bookmark,
                      color: white,
                    ),
                    onPressed: () {
                      Get.to(const Bookmark());
                      // Add bookmark button functionality here
                    },
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Barber Shop Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButtonwidget(
                        buttonText: "Open",
                        buttonbgcolor: yellow,
                        buttonborderRadius: 50,
                        buttonheight: 35,
                        buttontextcolor: white,
                        buttonwidth: 85,
                        onTap: () {},
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: yellow,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Shop Location',
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: yellow,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '4.5 (3,256 reviews)', // Replace with actual rating
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const IconButtonsRow(),
                  const SizedBox(height: 20),
                  Container(
                      height: 1, width: double.infinity, color: buttonborder),
                  const SizedBox(height: 10), // Space
                  NearbyLocation(
                    buttontext: "See All",
                    text: "Our Specialist",
                    onpressed: () {
                      Get.to(const Nearlocation());
                    },
                  ),

                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Cards(),
                        Cards(),
                        Cards(),
                        Cards(),
                        Cards(),
                        Cards(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  const OutlineButtonsRow(),
                  const SizedBox(height: 5), // Space
                  SizedBox(
                    child: Obx(() {
                      return IndexedStack(
                        index: _controller.pageIndex.value,
                        children: const [
                          AboutPage(),
                          ServicesPage(),
                          Packagescreenwidget(),
                          ImageList(),
                          ReviewScreen(),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OutlineButtonsRow extends StatefulWidget {
  const OutlineButtonsRow({super.key});

  @override
  State<OutlineButtonsRow> createState() => _OutlineButtonsRowState();
}

class _OutlineButtonsRowState extends State<OutlineButtonsRow> {
  final Getxcontroll _controller = Get.put(Getxcontroll());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "About us",
            onTap: () {
              _controller.setPageIndex(0);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Services",
            onTap: () {
              _controller.setPageIndex(1);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Package",
            onTap: () {
              _controller.setPageIndex(2);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Gallery",
            onTap: () {
              _controller.setPageIndex(3);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Review",
            onTap: () {
              _controller.setPageIndex(4);
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class IconButtonsRow extends StatelessWidget {
  const IconButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    String query = Uri.encodeComponent("lucknow");
    String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButtonWithName(
          icon: Icons.message,
          name: "Message",
          ontap: () {
            Get.to(const ChatScreen());
          },
        ),
        IconButtonWithName(
          icon: Icons.call,
          name: "Call",
          ontap: () {
            launch('tel:  6386444795');
          },
        ),
        IconButtonWithName(
          icon: Icons.directions,
          name: "Direction",
          ontap: () {
            launch(googleUrl);
          },
        ),
        IconButtonWithName(
          icon: Icons.share,
          name: "Share",
          ontap: () {
            Share.share(
                'hey! check out this new app https://youtu.be/cY4nGCw-JxY?si=pRZgLLRVCimiFyKl',
                subject: 'New App');
          },
        ),
        const IconButtonWithName(icon: Icons.book_online, name: "book"),
      ],
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(227, 244, 240, 240), // Replace with image
      ),
      margin: const EdgeInsets.all(8),
      width: 100,
      height: 110,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 75,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Text(
            "jenny",
            style: Textstyle.black,
          )
        ],
      ),
    );
  }
}
