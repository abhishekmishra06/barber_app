// import 'package:barber_app/utils/imports.dart';

// class Mostpupular extends StatelessWidget {
//   const Mostpupular({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: white,
//         appBar: AppBar(
//           backgroundColor: white,
//           leading: const BackButton(
//             color: Colors.black,
//           ),
//           elevation: 2,
//           title: const Text('Most  Popular'),
//         ),
//         body:   Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: ListView.builder(
//           itemCount: DummyData.salonList.length,
//           itemBuilder: (context, index) {
//             final salon = DummyData.salonList[index];
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 15.0),
//               child: SalonCard(
//                 duration: salon['duration'],
//                 imageUrl: salon['imageUrl'],
//                 onBookmarkIcon: () {
//                  },
//                 shopName: salon['shopName'],
//                 location: salon['location'],
//                 rating: salon['rating'],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:barber_app/utils/imports.dart';

class Mostpupular extends StatelessWidget {
  const Mostpupular({super.key});

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
        title: const Text('Most Popular'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: DummyData.salonList.length,
          itemBuilder: (context, index) {
            final salon = DummyData.salonList[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: SalonCard(
                duration: salon['duration'],
                imageUrl: salon['imageUrl'],
                onBookmarkIcon: () {},
                shopName: salon['shopName'],
                location: salon['location'],
                rating: salon['rating'],
              ),
            );
          },
        ),
      ),
    );
  }
}
