import 'package:barber_app/utils/imports.dart';

class Servicescreen extends StatelessWidget {
  const Servicescreen({super.key});

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
        title: const Text('Our Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: DummyData.service.length,
          itemBuilder: (context, index) {
            final service = DummyData.service[index];
            return Column(
              children: [
                buildlist(
                  titletext: service['title']!,
                  tralingtext: service['trailing']!,
                ),
                const SizedBox(height: 15),
              ],
            );
          },
        ),
      ),
    );
  }
}
