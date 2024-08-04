import 'package:barber_app/utils/components/imports.dart';


class Nearlocation extends StatelessWidget {
  const Nearlocation({super.key});

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
          title: const Text('NearLocation'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: [
             SalonCard(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onBookmarkIcon: () {
                    // removebookmark(context );
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
              const SizedBox(
                height: 15,
              ),
            SalonCard(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onBookmarkIcon: () {
                    // removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            SalonCard(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onBookmarkIcon: () {
                    // removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            SalonCard(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onBookmarkIcon: () {
                    // removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            SalonCard(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onBookmarkIcon: () {
                    // removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            SalonCard(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onBookmarkIcon: () {
                    // removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            ],),
          ),
        ),
        );
  }
}