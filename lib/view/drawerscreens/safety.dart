import 'package:barber_app/utils/components/imports.dart';
 


class Saftey extends StatelessWidget {
  const Saftey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Safety"),
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 2,
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/safity.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Who do you want to",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("contact?",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Listwidget(
                firsticon: Icons.call,
                lasticon: Icons.navigate_next,
                lasticoncolor: grey,
                ontap: () {
                  launch('tel:  112');
                },
                text: "Ambulance",
              ),
              const SizedBox(
                height: 15,
              ),
              Listwidget(
                firsticon: Icons.call,
                lasticon: Icons.navigate_next,
                lasticoncolor: grey,
                ontap: () {
                  launch('tel:  100');
                },
                text: "Police",
              ),
              const SizedBox(
                height: 15,
              ),
              Listwidget(
                firsticon: Icons.message,
                lasticon: Icons.navigate_next,
                lasticoncolor: grey,
                ontap: () {
                  var whatsappUrl = "whatsapp://send?phone=91+6386555495"
                      "&text=${Uri.encodeComponent("What's problem")}";
                  try {
                    launch(whatsappUrl);
                  } catch (e) {
                    (e);
                  }
                },
                text: "Message Support",
              ),
              const SizedBox(
                height: 15,
              ),
              Listwidget(
                firsticon: Icons.safety_check,
                lasticon: Icons.navigate_next,
                lasticoncolor: grey,
                ontap: () {
                  Get.to(const SafetyTipsScreen());
                },
                text: "Safety Trips",
              )
            ],
          ),
        ),
      ]),
    );
  }
}
