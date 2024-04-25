import 'dart:async';
import 'package:barber_app/controller/controller.dart';
import 'package:barber_app/view/screens/home_screen/widgets/pages/mostpopular/mostpopular.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/const.dart';
import '../../../utils/buttons_widget.dart';
import '../../../utils/inputfield.dart';
import '../../../utils/textstyle.dart';
import 'widgets/pages/booking/mybooking.dart';
import 'widgets/pages/explore/explore.dart';
import 'widgets/pages/filter/filter.dart';
import 'widgets/pages/bookmarks/mybookmark.dart';
import 'widgets/pages/inbox/inbox.dart';
import 'widgets/pages/nearlocation/nearlocation.dart';
import 'widgets/pages/notification/notification.dart';
import 'widgets/pages/profile/profile.dart';
import 'widgets/pages/shopdetail.dart/shopdetailpage.dart';

class Homecreen extends StatefulWidget {
  Homecreen({super.key});

  @override
  State<Homecreen> createState() => _HomecreenState();
}

class _HomecreenState extends State<Homecreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // Add your pages here
    const HomeScreen(),
    const Explorescreen(),
    const BookingScreen(),
    const InboxScreen(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your existing scaffold code here
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: yellow,
        unselectedItemColor: grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment_rounded),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_history),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    // Add more image URLs as needed
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
          title:  Row(
            children: [
              Container(
                child: CircleAvatar(child: Image.asset("assets/logo.png" ,),
              radius: 17,  
                ),

              ),
              // Left section: App logo and name
              // Replace 'YourAppLogo' with your actual logo widget
              // YourAppLogo(),
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
              // icon: const Icon(
              //   Icons.notifications_none_sharp,
              //   color: grey,
              // ),
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
        // drawer: Drawer(
        //     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        //     child: SingleChildScrollView(
        //       child: Column(
        //         children: [
        //           DrawerHeader(
        //             decoration: const BoxDecoration(
        //                 color: Color.fromRGBO(255, 255, 255, 1)),
        //             child: UserAccountsDrawerHeader(
        //               decoration: const BoxDecoration(
        //                   color: Color.fromARGB(255, 255, 255, 255)),
        //               accountName: Text(
        //                 "Abhishek Mishra",
        //                 style: Textstyle.customstyle(black, 15),
        //               ),
        //               accountEmail: Text(
        //                 "6386444795",
        //                 style: Textstyle.customstyle(black, 15),
        //               ),
        //               currentAccountPictureSize: const Size.square(50),
        //               currentAccountPicture: InkWell(
        //                 onTap: () {
        //                   Get.to(const Profile());
        //                 },
        //                 child: SizedBox(
        //                     width: 50,
        //                     height: 50,
        //                     child: ClipRRect(
        //                         borderRadius: BorderRadius.circular(100),
        //                         child: ClipRRect(
        //                             borderRadius: BorderRadius.circular(100),
        //                             child: Image.asset(
        //                               "assets/profileimage.png",
        //                               fit: BoxFit.cover,
        //                             )))),
        //               ),
        //             ),
        //           ),
        //           const SizedBox(height: 10),
        //           ListTile(
        //             textColor: const Color.fromARGB(255, 0, 0, 0),
        //             iconColor: const Color.fromARGB(255, 0, 0, 0),
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             leading: const CircleAvatar(
        //                 radius: 20,
        //                 backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                 child: Icon(
        //                   Icons.history,
        //                 )),
        //             title: Text(
        //               ' My booking ',
        //               style: Textstyle.customstyle(black, 20),
        //             ),
        //             onTap: () {
        //               Get.to(const BookingScreen());
        //             },
        //           ),
        //           ListTile(
        //             textColor: const Color.fromARGB(255, 0, 0, 0),
        //             iconColor: const Color.fromARGB(255, 0, 0, 0),
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             leading: const CircleAvatar(
        //                 radius: 20,
        //                 backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                 child: Icon(Icons.safety_check)),
        //             title: Text(
        //               ' Safety ',
        //               style: Textstyle.customstyle(black, 20),
        //             ),
        //             onTap: () {
        //               Get.to(const Saftey());
        //             },
        //           ),
        //           ListTile(
        //             textColor: const Color.fromARGB(255, 0, 0, 0),
        //             iconColor: const Color.fromARGB(255, 0, 0, 0),
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             leading: const CircleAvatar(
        //                 radius: 20,
        //                 backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                 child: Icon(Icons.support_agent)),
        //             title: Text(
        //               ' Support ',
        //               style: Textstyle.customstyle(black, 20),
        //             ),
        //             onTap: () {
        //               var whatsappUrl = "whatsapp://send?phone=91+6386555485"
        //                   "&text=${Uri.encodeComponent("What's problem")}";
        //               try {
        //                 launch(whatsappUrl);
        //               } catch (e) {
        //                 log(e as String);
        //               }
        //             },
        //           ),
        //           ListTile(
        //             textColor: const Color.fromARGB(255, 0, 0, 0),
        //             iconColor: const Color.fromARGB(255, 0, 0, 0),
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             leading: const CircleAvatar(
        //                 radius: 20,
        //                 backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                 child: Icon(Icons.share_sharp)),
        //             title: Text(
        //               ' Share ',
        //               style: Textstyle.customstyle(black, 20),
        //             ),
        //             onTap: () {
        //               Share.share(
        //                   'hey! check out this new app https://youtu.be/cY4nGCw-JxY?si=pRZgLLRVCimiFyKl',
        //                   subject: 'New App');
        //             },
        //           ),
        //           ListTile(
        //             textColor: const Color.fromARGB(255, 0, 0, 0),
        //             iconColor: const Color.fromARGB(255, 0, 0, 0),
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             leading: const CircleAvatar(
        //                 radius: 20,
        //                 backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                 child: Icon(Icons.info)),
        //             title: Text(
        //               ' About ',
        //               style: Textstyle.customstyle(black, 20),
        //             ),
        //             onTap: () {
        //               Get.to(const Aboutscreen());
        //             },
        //           ),
        //           ListTile(
        //             textColor: const Color.fromARGB(255, 0, 0, 0),
        //             iconColor: const Color.fromARGB(255, 0, 0, 0),
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             leading: const CircleAvatar(
        //                 radius: 20,
        //                 backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                 child: Icon(Icons.logout_sharp)),
        //             title: Text(
        //               ' Logout ',
        //               style: Textstyle.customstyle(black, 20),
        //             ),
        //             onTap: () async {},
        //           ),
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           const Center(
        //             child:
        //                 Text("version 1.0.0", style: Textstyle.hinttextcolor),
        //           ),
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               IconButton(
        //                 hoverColor: Colors.green,
        //                 onPressed: () {
        //                   Urllaunch.launchUrll("https://www.facebook.com");
        //                 },
        //                 icon: const CircleAvatar(
        //                     radius: 20,
        //                     backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                     child: Icon(
        //                       FontAwesomeIcons.facebookF,
        //                       color: blue,
        //                     )),
        //               ),
        //               IconButton(
        //                 hoverColor: Colors.green,
        //                 onPressed: () {
        //                   Urllaunch.launchUrll("https://www.instagram.com");
        //                 },
        //                 icon: const CircleAvatar(
        //                   radius: 20,
        //                   backgroundColor: Color.fromARGB(44, 190, 190, 190),
        //                   child: CircleAvatar(
        //                       radius: 20,
        //                       backgroundColor:
        //                           Color.fromARGB(44, 190, 190, 190),
        //                       child: Icon(
        //                         FontAwesomeIcons.squareInstagram,
        //                         color: red,
        //                       )),
        //                 ),
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     )),
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
              ImageCarousel(imageUrls: imageUrls),
              const SizedBox(height: 20),
              const IconButtonsRow(),
              const SizedBox(height: 20),

              Container(height: 1, width: double.infinity, color: buttonborder),
              NearbyLocation(
                buttontext: "See All",
                text: "Nearby your location",
                onpressed: () {
                  Get.to(const Nearlocation());
                },
              ),
              const SizedBox(height: 5), // Space
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
              const SizedBox(
                height: 20,
              ),
              NearbyLocation(
                buttontext: "See All",
                text: "Most Popular",
                onpressed: () {
                  Get.to(const Mostpupular());
                },
              ),
              const SizedBox(height: 5),
              const OutlineButtonsRow(),
              const SizedBox(height: 20),
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
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}

class YourAppLogo extends StatelessWidget {
  const YourAppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace this with your actual app logo widget
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}

class GreetingMessage extends StatelessWidget {
  const GreetingMessage({super.key});

  @override
  Widget build(BuildContext context) {
    String greeting = _getGreeting();
    String username = "Abhishek"; // Replace with actual username
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

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {
            // Add your filter button functionality here
          },
        ),
      ],
    );
  }
}

// class ImageCarousel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Implement your image carousel widget here
//     return Container(
//       height: 150,
//       color: Colors.grey, // Placeholder color
//       // Implement your image carousel widget here
//     );
//   }
// }
// Define the IconButtonsRow widget
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

// IconButtonWithName widget
class IconButtonWithName extends StatelessWidget {
  final IconData icon;
  final String name;
  final Function()? ontap;

  const IconButtonWithName(
      {super.key, required this.icon, required this.name, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 20,
            backgroundColor: lightyellow,
            child: IconButton(
                onPressed: ontap,
                icon: Icon(
                  icon,
                  color: yellow,
                ))),
        Text(name),
      ],
    );
  }
}

class NearbyLocation extends StatelessWidget {
  final String text;
  final Function()? onpressed;
  final String buttontext;
  const NearbyLocation(
      {super.key,
      required this.text,
      required this.onpressed,
      required this.buttontext});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Textstyle.customstyle(black, 16),
        ),
        TextButton(
          onPressed: onpressed,
          child: Text(
            buttontext,
            style: Textstyle.customstyle(yellow, 16),
          ),
        ),
      ],
    );
  }
}

// Define the OutlineButtonsRow widget
class OutlineButtonsRow extends StatelessWidget {
  const OutlineButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "All",
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Haircuts",
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),

          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Make up",
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),

          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Beauty",
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),

          Outlinebutton(
            buttonborderRadius: 10,
            buttonbordercolor: yellow,
            buttontext: "Face",
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),

          // OutlineButton(

          //   onPressed: () {
          //     // Add onPressed functionality here
          //   },
          //   child: Text("All"),
          // ),
          // OutlineButton(
          //   onPressed: () {
          //     // Add onPressed functionality here
          //   },
          //   child: Text("Haircuts"),
          // ),
          // OutlineButton(
          //   onPressed: () {
          //     // Add onPressed functionality here
          //   },
          //   child: Text("Makeup"),
          // ),
          // OutlineButton(
          //   onPressed: () {
          //     // Add onPressed functionality here
          //   },
          //   child: Text("Beauty"),
          // ),
          // OutlineButton(
          //   onPressed: () {
          //     // Add onPressed functionality here
          //   },
          //   child: Text("Style"),
          // ),
          // OutlineButton(
          //   onPressed: () {
          //     // Add onPressed functionality here
          //   },
          //   child: Text("Trends"),
          // ),
        ],
      ),
    );
  }
}

// Define the SalonList widget
class SalonList extends StatelessWidget {
  const SalonList({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement your salon list widget here
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return const SalonCard(
          imageUrl:
              'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          shopName: 'Salon One',
          location: '123 Street, City',
          duration: '10 min',
          rating: 4.5,
          isBookmarked: false,
        );
      },
    );
  }
}

class SalonCard extends StatelessWidget {
  final String imageUrl;
  final String shopName;
  final String location;
  final String duration;
  final double rating;
  final bool isBookmarked;

  const SalonCard({
    super.key,
    required this.imageUrl,
    required this.shopName,
    required this.location,
    required this.duration,
    required this.rating,
    this.isBookmarked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shopName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      duration,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.orange),
                    const SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                      color: isBookmarked ? Colors.blue : Colors.grey,
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your booking functionality here
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 16)),
                      ),
                      child: const Text(
                        'Book Now',
                        style: TextStyle(color: Colors.white),
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

class ImageCarousel extends StatefulWidget {
  final List<String> imageUrls;

  const ImageCarousel({super.key, required this.imageUrls});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage < widget.imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.imageUrls.length,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.network(
                      widget.imageUrls[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: MediaQuery.of(context).size.width / 2 -
              widget.imageUrls.length * 6,
          child: _buildPageIndicator(),
        )
      ],
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.imageUrls.map((url) {
        int index = widget.imageUrls.indexOf(url);
        return Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : white,
          ),
        );
      }).toList(),
    );
  }
}

Widget buildorders({
  required double rating,
  required String shopName,
  required String location,
  required String imageUrl,
  required String duration,
  required Function()? onbookmarkicon,
}) {
  return InkWell(
    onTap: () {
      Get.to(const Shopdetailscreen());
    },
    child: Container(
      padding: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(44, 190, 190, 190),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 120,
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      shopName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: onbookmarkicon,
                            icon: const Icon(
                              Icons.bookmark_border_outlined,
                              color: yellow,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 15, color: yellow),
                    const SizedBox(width: 4),
                    Text(
                      duration,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.star, size: 15, color: yellow),
                    const SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                // SizedBox(height: 8),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Icon(
                //       Icons.bookmark_border,
                // isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                // color: isBookmarked ? Colors.blue : Colors.grey,
                //     ),

                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
