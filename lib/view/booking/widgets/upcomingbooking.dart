import 'package:barber_app/utils/imports.dart';

class Upcomingbooking extends StatelessWidget {
  const Upcomingbooking({super.key});

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
            'Upcoming Orders',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: DummyData.upcomingOrders.length,
              itemBuilder: (context, index) {
                final order = DummyData.upcomingOrders[index];
                return Column(
                  children: [
                    UpComingItemcard(
                      imageurl: order["imageurl"]!,
                      date: order["date"]!,
                      description: order["description"]!,
                      status: order["status"]!,
                      title: order["title"]!,
                      location: order["location"]!,
                    ),
                    const SizedBox(height: 20),
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
