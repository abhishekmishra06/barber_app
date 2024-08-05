import 'package:barber_app/utils/imports.dart';

class Bookingcancel extends StatelessWidget {
  const Bookingcancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(height: 5),
          const Text(
            'Cancelled Orders',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: DummyData.cancelledOrders.length,
              itemBuilder: (context, index) {
                final order = DummyData.cancelledOrders[index];
                return Column(
                  children: [
                    CancelledItemcard(
                      imageurl: order["imageurl"]!,
                      date: order["date"]!,
                      description: order["description"]!,
                      status: order["status"]!,
                      title: order["title"]!,
                      location: order["location"]!,
                    ),
                    const SizedBox(height: 15),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
