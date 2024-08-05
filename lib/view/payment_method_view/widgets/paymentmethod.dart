import 'package:barber_app/utils/imports.dart';

 
class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  _PaymentMethodsScreenState createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String selectedPaymentMethod = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Methods',
          style: Textstyle.black,
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 15, top: 15, right: 15, bottom: 100),
            child: ListView.builder(
              itemCount: DummyData.paymentMethods.length,
              itemBuilder: (context, index) {
                final method = DummyData.paymentMethods[index];
                return Column(
                  children: [
                    PaymentMethodCard(
                      image: method['image']!,
                      name: method['name']!,
                      isSelected: selectedPaymentMethod == method['name'],
                      onSelect: () {
                        setState(() {
                          selectedPaymentMethod = method['name']!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                color: Colors.white,
                child: TextButtonwidget(
                  buttonText: "Update Information",
                  buttonbgcolor: yellow,
                  buttonborderRadius: 10,
                  buttonheight: 60,
                  buttontextcolor: black,
                  buttonwidth: double.infinity,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

 class PaymentMethodCard extends StatelessWidget {
  final String image;
  final String name;
  final bool isSelected;
  final VoidCallback onSelect;

  const PaymentMethodCard({
    super.key,
    required this.image,
    required this.name,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: lightgrey),
      child: ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text(
          name,
          style: Textstyle.black,
        ),
        trailing: Radio(
          fillColor: const WidgetStatePropertyAll(yellow),
          value: name,
          groupValue: isSelected ? name : null,
          onChanged: (value) {
            onSelect();
          },
        ),
        onTap: onSelect,
      ),
    );
  }
}
