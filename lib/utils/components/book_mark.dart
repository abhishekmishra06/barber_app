import 'package:barber_app/utils/imports.dart';


void showRemoveBookmarkDialog(BuildContext context, BookmarkItem bookmark) {
  showModalBottomSheet<void>(
    elevation: 2,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      width: 80,
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                        thickness: 3,
                        indent: 5,
                        endIndent: 5,
                      )),
                  const Text(
                    'Remove from Bookmark?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 1,
                            width: double.infinity,
                            color: buttonborder),
                        const SizedBox(height: 16.0),
                        SalonCard(
                          duration: bookmark.duration,
                          imageUrl: bookmark.imageUrl,
                          onBookmarkIcon: () {},
                          shopName: bookmark.shopName,
                          location: bookmark.location,
                          rating: bookmark.rating,
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButtonwidget(
                              buttonText: "Cancel",
                              buttonbgcolor: lightyellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButtonwidget(
                              buttonText: "Yes, Remove",
                              buttonbgcolor: yellow,
                              buttonborderRadius: 10,
                              buttonheight: 60,
                              buttontextcolor: black,
                              buttonwidth: 150,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class BookmarkItem {
  final String duration;
  final String imageUrl;
  final String shopName;
  final String location;
  final double rating;

  const BookmarkItem({
    required this.duration,
    required this.imageUrl,
    required this.shopName,
    required this.location,
    required this.rating,
  });
}
