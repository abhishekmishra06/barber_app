import 'package:barber_app/utils/imports.dart';
   

 

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {}); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Booking'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          dividerColor: Colors.transparent,
          labelPadding: const EdgeInsets.all(0),
          indicator: null,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
                child: Outlinebutton(
              buttonbgcolor:
                  _tabController.index == 0 ? yellow : Colors.transparent,
              buttontextcolor: _tabController.index == 0 ? white : yellow,
              buttonbordercolor: yellow,
              buttontext: "Upcoming",
              buttonborderRadius: 10,
              onTap: () {
                _tabController.animateTo(0);
              },
            )),
            Tab(
                child: Outlinebutton(
              buttonbgcolor:
                  _tabController.index == 1 ? yellow : Colors.transparent,
              buttontextcolor: _tabController.index == 1 ? white : yellow,
              buttonbordercolor: yellow,
              buttontext: "Completed",
              buttonborderRadius: 10,
              onTap: () {
                _tabController.animateTo(1);
              },
            )),
            Tab(
                child: Outlinebutton(
              buttonbgcolor:
                  _tabController.index == 2 ? yellow : Colors.transparent,
              buttontextcolor: _tabController.index == 2 ? white : yellow,
              buttonbordercolor: yellow,
              buttontext: "Cancelled",
              buttonborderRadius: 10,
              onTap: () {
                _tabController.animateTo(2);
              },
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
           Upcomingbooking(),
          Completedbooking(),
          Bookingcancel(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class CancelledItemcard extends StatelessWidget {
  final String title;
  final String location;
  final String description;
  final String date;
  final String status;
  final String imageurl;

  const CancelledItemcard({
    super.key,
    required this.title,
    required this.location,
    required this.description,
    required this.date,
    required this.status,
    required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: lightgrey, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 2, bottom: 2, left: 12, right: 12),
                decoration: BoxDecoration(
                    color: red, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  status,
                  style: const TextStyle(fontSize: 16, color: white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 110,
                  height: 110,
                  color: Colors.grey,
                  child: Image.network(
                    imageurl,
                    fit: BoxFit.cover,
                  ),
                ),
              ), // Placeholder for the picture

              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Services:",
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(color: yellow),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CompleteItemcard extends StatelessWidget {
  final String title;
  final String location;
  final String description;
  final String date;
  final String status;
  final String imageurl;

  const CompleteItemcard({
    super.key,
    required this.title,
    required this.location,
    required this.description,
    required this.date,
    required this.status,
    required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: lightgrey, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 2, bottom: 2, left: 12, right: 12),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  status,
                  style: const TextStyle(fontSize: 16, color: white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 110,
                  height: 110,
                  color: Colors.grey,
                  child: Image.network(
                    imageurl,
                    fit: BoxFit.cover,
                  ),
                ),
              ), // Placeholder for the picture

              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Services:",
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(color: yellow),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Outlinebutton(
                buttonbgcolor: Colors.transparent,
                buttontextcolor: yellow,
                buttonbordercolor: yellow,
                buttontext: "View E-Receipt",
                buttonborderRadius: 10,
                onTap: () {
                  Get.to(const PaymentScreen());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class UpComingItemcard extends StatelessWidget {
  final String title;
  final String location;
  final String description;
  final String date;
  final bool status;
  final String imageurl;

  const UpComingItemcard({
    super.key,
    required this.title,
    required this.location,
    required this.description,
    required this.date,
    required this.status,
    required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: lightgrey, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                date,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Remind me",
                    style: Textstyle.black,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Switch(
                      inactiveThumbColor: white,
                      value: status,
                      activeColor: white,
                      activeTrackColor: yellow,
                      onChanged: (Value) {})
                ],
              ))
            ],
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 110,
                  height: 110,
                  color: Colors.grey,
                  child: Image.network(
                    imageurl,
                    fit: BoxFit.cover,
                  ),
                ),
              ), // Placeholder for the picture

              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Services:",
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(color: yellow),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Outlinebutton(
                buttonbgcolor: Colors.transparent,
                buttontextcolor: yellow,
                buttonbordercolor: yellow,
                buttontext: "Cancel Booking",
                buttonborderRadius: 10,
                onTap: () {
                  canclebooking(context);
                },
              ),
              Outlinebutton(
                buttonbgcolor: Colors.transparent,
                buttontextcolor: yellow,
                buttonbordercolor: yellow,
                buttontext: "View E-Receipt",
                buttonborderRadius: 10,
                onTap: () {
                  Get.to(const Receiptsummary());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

void canclebooking(BuildContext context) {
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
                    'Cancel Booking ?',
                    style: TextStyle(
                        fontSize: 20, color: red, fontWeight: FontWeight.bold),
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
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, right: 30, left: 30, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Are you sure want to cancel your barber/salon booking?",
                                style: Textstyle.customstyle(black, 20),
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                "Only 80% of the money you can refund from your payment according to our policy?",
                                style: Textstyle.hinttextcolor,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              buttonText: "Yes Cancel Booking",
                              buttonbgcolor: yellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 190,
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
