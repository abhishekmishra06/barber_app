import 'package:flutter/material.dart';

class ShopDetailScreen extends StatefulWidget {
  const ShopDetailScreen({super.key});

  @override
  _ShopDetailScreenState createState() => _ShopDetailScreenState();
}

class _ShopDetailScreenState extends State<ShopDetailScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _pageIndex,
              children: const [
                // About page
                AboutPage(),
                // Services page
                ServicesPage(),
                // Add more pages as needed
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _pageIndex = 0;
                  });
                },
                child: const Text('About'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _pageIndex = 1;
                  });
                },
                child: const Text('Services'),
              ),
              // Add more buttons for additional pages
            ],
          ),
        ],
      ),
    );
  }
}

// About Page Widget
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'About Page Content',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Services Page Widget
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Services Page Content',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:photo_view/photo_view.dart';

// class ImageGallery extends StatelessWidget {
//   final List<String> imagePaths; // List of image asset paths
//   final double imageWidth; // Desired image width
//   final double imageHeight; // Desired image height
//   final double spacing; // Spacing between images

//   const ImageGallery({
//     Key? key,
//     required this.imagePaths,
//     this.imageWidth = 100,
//     this.imageHeight = 100,
//     this.spacing = 10,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 2, // Adjust for desired number of columns
//       mainAxisSpacing: spacing,
//       crossAxisSpacing: spacing,
//       children: imagePaths.map((imagePath) => _buildImageItem(imagePath)).toList(),
//     );
//   }

//   Widget _buildImageItem(String imagePath) {
//     return Container(
//       padding: EdgeInsets.all(5),
//       child: PhotoView(
//         imageProvider: AssetImage(imagePath),
//         initialScale: 1.0, // Initial zoom level
//         minScale: PhotoViewComputedScale.contained, // Minimum zoom to fit
//         maxScale: PhotoViewComputedScale.covered, // Maximum zoom to fill
//       ),
//     );
//   }
// }
