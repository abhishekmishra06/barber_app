import 'package:barber_app/utils/components/imports.dart';
 

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
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Packagecards(
            price: 1125,
            imageUrl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            offerdetail: "Special Offer package valid only 12 mar 2024",
            offername: "Haircut & HairStyle",
          ),
              SizedBox(
                height: 15,
              ),
               Packagecards(
            price: 1125,
            imageUrl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            offerdetail: "Special Offer package valid only 12 mar 2024",
            offername: "Haircut & HairStyle",
          ),
              SizedBox(
                height: 15,
              ),
              Packagecards(
            price: 1125,
            imageUrl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            offerdetail: "Special Offer package valid only 12 mar 2024",
            offername: "Haircut & HairStyle",
          ),
              SizedBox(
                height: 15,
              ),
              Packagecards(
            price: 1125,
            imageUrl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            offerdetail: "Special Offer package valid only 12 mar 2024",
            offername: "Haircut & HairStyle",
          ),
              SizedBox(
                height: 15,
              ),
              Packagecards(
            price: 1125,
            imageUrl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            offerdetail: "Special Offer package valid only 12 mar 2024",
            offername: "Haircut & HairStyle",
          ),
              SizedBox(
                height: 15,
              ),
          Packagecards(
            price: 1125,
            imageUrl:
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            offerdetail: "Special Offer package valid only 12 mar 2024",
            offername: "Haircut & HairStyle",
          ),
            ],
          ),
        ),
      ),
    );
  }
}
