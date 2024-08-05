import 'package:barber_app/utils/components/package_card.dart';
import 'package:barber_app/utils/imports.dart';
 

class Packagescreen extends StatelessWidget {
  const Packagescreen({super.key});

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
        title: const Text('Our Package'),
      ),
  body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: DummyData.packages.length,
          itemBuilder: (context, index) {
            final package = DummyData.packages[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Packagecards(
                price: package['price'].toDouble(),
                imageUrl: package['imageUrl'],
                offerdetail: package['offerDetail'],
                offername: package['offerName'],
              ),
            );
          },
        ),
      ),
    );
  }
}