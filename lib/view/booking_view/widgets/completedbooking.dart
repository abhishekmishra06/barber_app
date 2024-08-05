import 'package:barber_app/utils/imports.dart';

class Completedbooking extends StatelessWidget {
  const Completedbooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(height: 5),
          const Text(
            'Complete Orders',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: DummyData.completedOrders.length,
              itemBuilder: (context, index) {
                final order = DummyData.completedOrders[index];
                return Column(
                  children: [
                    CompleteItemcard(
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
