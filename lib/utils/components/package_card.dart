
import 'package:barber_app/utils/imports.dart';


class Packagecards extends StatelessWidget {
  const Packagecards({
    super.key,
    required this.offerdetail,
    required this.imageUrl,
    required this.price,
    required this.offername,
  });
  final String offername;
  final String imageUrl;
  final String offerdetail;
  final double price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(());
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
              height: 130,
              width: 130,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            offername,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          offerdetail,
                          style: const TextStyle(
                            fontSize: 14,
                            color: black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.currency_rupee,
                              size: 20, color: yellow),
                          Text(
                            price.toString(),
                            style: const TextStyle(
                                fontSize: 18,
                                color: yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                child: TextButtonwidget(
                                  buttonText: "Book Now",
                                  buttonbgcolor: yellow,
                                  buttonborderRadius: 50,
                                  buttonheight: 40,
                                  buttontextcolor: white,
                                  buttonwidth: 115,
                                  onTap: () {
                                    Get.to(const Packagebooking());
                                  },
                                ),
                              ) 
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(height: 4),
                    ],
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

 