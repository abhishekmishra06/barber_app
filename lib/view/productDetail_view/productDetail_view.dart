import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:barber_app/view/stores/favouriteItemList_view/favouriteItemList_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:video_player/video_player.dart';

import '../../const/const.dart';
import '../../utils/components/buttons_widget.dart';
import '../bookmarks/mybookmark.dart';
import '../stores/mycart_view/mycart_view.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Card(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 5,
                  child: const SizedBox(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              const Text("Detail Product"),
            ],
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ImageCarousel(
                      imageUrls: [
                        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Facial Foam',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Row(
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
                                    Icons.star_half_sharp,
                                    color: yellow,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Skincare',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$232323',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '\$2323233',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: yellow),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          DefaultTabController(
                            length: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                const TabBar(
                                  labelColor: Colors.black,
                                  unselectedLabelColor: Colors.grey,
                                  indicatorColor: Colors.black,
                                  tabs: [
                                    Tab(text: 'Description'),
                                    Tab(text: 'Reviews'),
                                    Tab(text: 'How to Use'),
                                  ],
                                ),
                                Container(
                                  height: 400,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5),
                                    ),
                                  ),
                                  child: const TabBarView(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'This is the description of the Facial Foam. It is a skincare product that helps cleanse and nourish your skin.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'Customer Reviews will be displayed here. Users can see and write reviews about the product.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: HowToUseVideo(
                                          videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButtonwidget(
                        buttonText: "Add to cart",
                        buttonbgcolor: lightyellow,
                        buttonborderRadius: 10,
                        buttonheight: 60,
                        buttontextcolor: white,
                        buttonwidth: 150,
                        onTap: () {
                          Get.to(const MyCart());
                        },
                      ),
                      TextButtonwidget(
                        buttonText: "Buy now",
                        buttonbgcolor: yellow,
                        buttonborderRadius: 10,
                        buttonheight: 60,
                        buttontextcolor: white,
                        buttonwidth: 150,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  final List<String> imageUrls;

  const ImageCarousel({super.key, required this.imageUrls});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage < widget.imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.imageUrls.map((url) {
        int index = widget.imageUrls.indexOf(url);
        return Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.black : white,
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ClipRRect(
              // borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 300,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.imageUrls.length,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.network(
                      widget.imageUrls[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 30,
          right: 10,
          child: IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: white,
            ),
            onPressed: () {
              Get.to(const FavouritItemList());
            },
          ),
        ),
        Positioned(
          top: 80,
          right: 10,
          child: IconButton(
            icon: const Icon(
              Icons.share,
              color: white,
            ),
            onPressed: () {
              Share.share(
                  'hey! check out this new app https://youtu.be/cY4nGCw-JxY?si=pRZgLLRVCimiFyKl',
                  subject: 'New App');
            },
          ),
        ),
        Positioned(
          bottom: 5,
          left: MediaQuery.of(context).size.width / 2 -
              widget.imageUrls.length * 6,
          child: _buildPageIndicator(),
        ),
      ],
    );
  }
}

class HowToUseVideo extends StatefulWidget {
  final String videoUrl;

  const HowToUseVideo({super.key, required this.videoUrl});

  @override
  _HowToUseVideoState createState() => _HowToUseVideoState();
}

class _HowToUseVideoState extends State<HowToUseVideo> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  ControlsOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
class ControlsOverlay extends StatelessWidget {
  const ControlsOverlay({Key? key, required this.controller}) : super(key: key);

  static const _iconSize = 60.0;
  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.value.isPlaying ? controller.pause() : controller.play();
      },
      child: Stack(
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 50),
            reverseDuration: const Duration(milliseconds: 200),
            child: controller.value.isPlaying
                ? const SizedBox.shrink()
                : Container(
                    color: Colors.black26,
                    child:   Center(
                      child:
                        // Icons.play_arrow,
                        // color: Colors.white,
                        // size: _iconSize,


                         controller.value.isPlaying ? const Icon( Icons.pause, color: Colors.white,
                        size: _iconSize,) : const Icon( Icons.play_arrow,color: Colors.white,
                        size: _iconSize,)

                    ),
                  ),
          ),
        ],
      ),
    );
  }
}