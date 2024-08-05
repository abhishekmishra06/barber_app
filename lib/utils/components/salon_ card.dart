import 'package:barber_app/utils/imports.dart';
import 'package:barber_app/view/shop_detail_view.dart/shop_detail_page.dart';


class SalonCard extends StatelessWidget {
  final String duration;
  final String imageUrl;
  final Function()? onBookmarkIcon;
  final String shopName;
  final String location;
  final double rating;

  const SalonCard({
    super.key,
    required this.duration,
    required this.imageUrl,
    required this.onBookmarkIcon,
    required this.shopName,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
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
                              onPressed: onBookmarkIcon,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
