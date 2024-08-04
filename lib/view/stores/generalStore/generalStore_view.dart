 import 'package:barber_app/utils/components/imports.dart';
 


class GeneralStore extends StatelessWidget {
  const GeneralStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Card(
                  color: yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 8,
                  child: const Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.arrow_back_ios),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 15),
              const Text("Our Store"),
            ],
          ),
          backgroundColor: white,
          actions: [
           
             
            IconButton(
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: grey,
              ),
              onPressed: () {
                Get.to(const FavouritItemList());
              },
            ),
             IconButton(
              icon: Badge.count(
                count: 3,
                backgroundColor: yellow,
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: grey,
                ),
              ),
              onPressed: () {
                Get.to(MyCart());
              },
            ),
             IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: grey,
              ),
              onPressed: () {
                Get.to(MyCart());
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Hi, Abhishek',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Searchbox(
                    controller: emailController,
                    hinttext: "Search",
                    inputfieldIcon: const Icon(Icons.search),
                    suffixicon: const Icon(Icons.filter_list),
                    onicontap: () {
                      showform(context);
                    }),
                const SizedBox(height: 20),
                const Text(
                  'Special Offer',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const StoreCardListType(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Popular Product',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StoreCard(
                      imageUrl: 'assets/welcom.jpg',
                      title: 'Facial Foam',
                      category: 'Skincare',
                      originalPrice: 35.0,
                      discountedPrice: 25.0,
                      onPressed: () {
                        // Handle button press
                        Get.to(const ProductDetailPage());
                      },
                    ),
                    StoreCard(
                      imageUrl: 'assets/welcom.jpg',
                      title: 'Facial Foam',
                      category: 'Skincare',
                      originalPrice: 35.0,
                      discountedPrice: 25.0,
                      onPressed: () {
                        // Handle button press
                        print('Button pressed');
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StoreCard(
                      imageUrl: 'assets/welcom.jpg',
                      title: 'Facial Foam',
                      category: 'Skincare',
                      originalPrice: 35.0,
                      discountedPrice: 25.0,
                      onPressed: () {
                        print('Button pressed');
                      },
                    ),
                    StoreCard(
                      imageUrl: 'assets/welcom.jpg',
                      title: 'Facial Foam',
                      category: 'Skincare',
                      originalPrice: 35.0,
                      discountedPrice: 25.0,
                      onPressed: () {
                        print('Button pressed');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
