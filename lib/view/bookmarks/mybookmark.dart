import 'package:barber_app/utils/imports.dart';


class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
     final List<String> buttonLabels = [
    "All",
    "Haircuts",
    "Make up",
    "Beauty",
    "Face"
  ];
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 2,
        title: const Text('My Bookmarks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: buttonLabels.map((label) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Outlinebutton(
                        buttonborderRadius: 10,
                        buttonbordercolor: yellow,
                        buttontext: label,
                        onTap: () {},
                      ),
                    );
                  }).toList(),
                ),
              ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: DummyData.bookmarks.length,
                itemBuilder: (context, index) {
                  final bookmark = DummyData.bookmarks[index];
                  return Column(
                    children: [
                      SalonCard(
                        duration: bookmark.duration,
                        imageUrl: bookmark.imageUrl,
                        onBookmarkIcon: () {
                          showRemoveBookmarkDialog(context, bookmark);
                        },
                        shopName: bookmark.shopName,
                        location: bookmark.location,
                        rating: bookmark.rating,
                      ),
                      const SizedBox(height: 15),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
