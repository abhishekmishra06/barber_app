import 'package:barber_app/utils/imports.dart';


class Explorescreen extends StatelessWidget {
  const Explorescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: Textstyle.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
             },
          ),
        ],
      ),
      body: Image.asset(
        "assets/Simple-Location-Picker.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
