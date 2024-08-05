import 'package:barber_app/utils/components/package_card.dart';
import 'package:barber_app/utils/imports.dart';

class Packagescreenwidget extends StatelessWidget {
  const Packagescreenwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowListTile(
          buttontext: "See All",
          text: "Our Package",
          onpressed: () {
            Get.to(const Packagescreen());
          },
        ),
        Container(height: 1, width: double.infinity, color: buttonborder),
        const SizedBox(
          height: 20,
        ),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
        const SizedBox(height: 15),
        const Packagecards(
          price: 1125,
          imageUrl:
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          offerdetail: "Special Offer package valid only 12 mar 2024",
          offername: "Haircut & HairStyle",
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
