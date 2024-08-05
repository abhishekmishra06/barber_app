import 'package:barber_app/utils/imports.dart';
 
class Packagebooking extends StatelessWidget {
  const Packagebooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Haircut & Hairstyle'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 15, bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          color: Colors
                              .grey, // Placeholder for image or background
                          child: Image.network(
                            "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          'Shop name',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Haircut & Hairstyle',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Special Offers Packages, valid until Dec 10, 2024',
                        style: TextStyle(
                          fontSize: 16,
                          color: black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Services:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     CheckBoxItem(title: 'Haircut'),
                  //     SizedBox(
                  //       width: 70,
                  //     ),
                  //     CheckBoxItem(title: 'Shave the Beard'),
                  //   ],
                  // ),
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     CheckBoxItem(title: 'Facial'),
                  //     SizedBox(
                  //       width: 79,
                  //     ),
                  //     CheckBoxItem(title: 'Shave Mustache'),
                  //   ],
                  // ),
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     CheckBoxItem(title: 'Hairstyle'),
                  //     SizedBox(
                  //       width: 60,
                  //     ),
                  //     CheckBoxItem(title: 'Hair Coloring'),
                  //   ],
                  // ),

                   
                  ...List.generate((DummyData.services.length / 2).ceil(),
                      (index) {
                    final firstService = DummyData.services[index * 2];
                    final secondService =
                        (index * 2 + 1 < DummyData.services.length)
                            ? DummyData.services[index * 2 + 1]
                            : null;
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CheckBoxItem(title: firstService),
                        const SizedBox(width: 60),
                        if (secondService != null)
                          CheckBoxItem(title: secondService),
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                color: Colors.white,
                child: TextButtonwidget(
                  buttonText: "Book Now - 450",
                  buttonbgcolor: yellow,
                  buttonborderRadius: 10,
                  buttonheight: 60,
                  buttontextcolor: black,
                  buttonwidth: double.infinity,
                  onTap: () {
                    Get.to(const PaymentScreen());
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CheckBoxItem extends StatefulWidget {
  final String title;

  const CheckBoxItem({super.key, required this.title});

  @override
  _CheckBoxItemState createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: yellow,
          side: const BorderSide(color: yellow),
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        Text(widget.title),
      ],
    );
  }
}
