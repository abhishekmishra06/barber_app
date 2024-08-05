import 'package:barber_app/utils/imports.dart';
import 'package:barber_app/view/home_view/home_view.dart';

class FeedbackDialog extends StatelessWidget {
  const FeedbackDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      title: Column(
        children: [
          Image.asset(
            'assets/tick.png',
            width: 160,
            height: 130,
          ),
          const SizedBox(height: 8),
          Text(
            'You have done using barber/salon service',
            style: Textstyle.customstyle(yellow, 25),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('please leave your review so others'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('people can know your opinion'),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star,
                  color: yellow,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: yellow,
                )
              ],
            ),
            const SizedBox(height: 16),
            Inputfield(
                controller: emailController,
                hinttext: "Enter your opinion",
                inputfieldIcon: const Icon(Icons.feedback_sharp)),
            const SizedBox(height: 16),
            TextButtonwidget(
              buttonText: "Submit",
              buttonbgcolor: yellow,
              buttonborderRadius: 10,
              buttonheight: 60,
              buttontextcolor: black,
              buttonwidth: double.infinity,
              onTap: () {
                Get.to(const ());
              },
            ),
            const SizedBox(height: 15),
            TextButtonwidget(
              buttonText: "Latter",
              buttonbgcolor: yellow,
              buttonborderRadius: 10,
              buttonheight: 60,
              buttontextcolor: black,
              buttonwidth: double.infinity,
              onTap: () {
                Get.to(const HomeView());
              },
            ),
          ],
        ),
      ),
    );
  }
}

void showFeedBackDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const FeedbackDialog();
    },
  );
}
