import 'package:barber_app/view/home_screen/homescreen.dart';
import 'package:barber_app/view/bookmarks/mybookmark.dart';
import 'package:flutter/material.dart';

import '../../const/const.dart';

class Mostpupular extends StatelessWidget {
  const Mostpupular({super.key});

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
          title: const Text('Most  Popular'),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: [
             buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),
              const SizedBox(
                height: 15,
              ),
            buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            buildorders(
                  duration: '10 min',
                  imageUrl:
                      'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  onbookmarkicon: () {
                    removebookmark(context);
                  },
                  shopName: 'Salon One',
                  location: '123 Street, City',
                  rating: 4.5,
                ),            const SizedBox(
                height: 15,
              ),
            ],),
          ),
        ),
        );
  }
}