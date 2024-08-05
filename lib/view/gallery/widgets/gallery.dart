import 'package:barber_app/utils/imports.dart';
 

class ImageList extends StatelessWidget {
  const ImageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / 3.4;
    return SingleChildScrollView(
      child: Column(
        children: [
          RowListTile(
            buttontext: "See All",
            text: "Our Gallery",
            onpressed: () {
              Get.to(const Ourgallery());
            },
          ),
          Container(height: 1, width: double.infinity, color: buttonborder),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 5.0,
            runSpacing: 5.0,
            children: DummyData.imageUrls.map((url) {
              return GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    _showImageDialog(context, url);
                  },
                  child: SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        url,
                        width: itemWidth,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            width: 300,
            height: 250,
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
