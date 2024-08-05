import 'package:barber_app/utils/imports.dart';

class Reviewscreen extends StatelessWidget {
  const Reviewscreen({super.key});

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
        title: const Text('Reviews'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Reviewscreencard(),
            );
          },
        ),
      ),
    );
  }
}
