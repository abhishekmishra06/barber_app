import 'package:barber_app/utils/components/imports.dart';
 

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
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
                              Reviewscreencard(),
          
              SizedBox(
                height: 15,
              ),
                             Reviewscreencard(),
          
              SizedBox(
                height: 15,
              ),
                              Reviewscreencard(),
          
              SizedBox(
                height: 15,
              ),
                             Reviewscreencard(),
          
              SizedBox(
                height: 15,
              ),
                              Reviewscreencard(),
          
              SizedBox(
                height: 15,
              ),
                              Reviewscreencard(),
          
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
