import 'package:flutter/material.dart';

class ExpireScreen extends StatelessWidget {
  const ExpireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Section Expiry Screen'),
        ),
        body: const ExpireScreenBody(),
      ),
    );
  }
}

class ExpireScreenBody extends StatefulWidget {
  const ExpireScreenBody({super.key});

  @override
  _ExpireScreenBodyState createState() => _ExpireScreenBodyState();
}

class _ExpireScreenBodyState extends State<ExpireScreenBody> {
  int clickCount = 0;

  void _showExpirationAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Section Expired'),
          content: const Text('You can contact us for more information.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _handleButtonClick() {
    setState(() {
      clickCount++;
      if (clickCount == 5) {
        _showExpirationAlert(context);
        clickCount = 0; // Reset click count after showing alert
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _handleButtonClick,
        child: const Text('Check Expire'),
      ),
    );
  }
}