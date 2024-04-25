import 'package:flutter/material.dart';

import '../../../../../../const/const.dart';
import 'widgets/gallery.dart';

class Ourgallery extends StatelessWidget {
  const Ourgallery({super.key});

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
        title: const Text('Our Gallery'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
                         ImageList(),

            ],
          ),
        ),
      ),
    );
  }
}