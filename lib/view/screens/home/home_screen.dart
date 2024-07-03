import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/view_model/utils/app_assets.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final CarouselController _carouselController = CarouselController();
    int _current = 0;
    final _controller = PageController(viewportFraction: 8, keepPage: true);
    final List<Image> imgList = [
      Image.network(
          'https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/%D8%A3%D9%81%D8%B6%D9%84-%D9%85%D8%AD%D9%84%D8%A7%D8%AA-%D8%AE%D8%B6%D8%A7%D8%B1-%D9%88%D9%81%D9%88%D8%A7%D9%83%D9%87-%D9%81%D9%8A-%D8%A3%D8%A8%D9%88%D8%B8%D8%A8%D9%8A-D-12-03.jpg'),
      Image.network(
          'https://www.albayan.ae/polopoly_fs/1.3809244.1584815232!/image/image.jpg'),
      Image.network(
          'https://www.brooonzyah.net/wp-content/uploads/2020/03/%D8%A7%D9%87%D9%85-%D8%A7%D9%84%D8%AE%D8%B6%D8%A7%D8%B1-%D9%88-%D8%A7%D9%84%D9%81%D9%88%D8%A7%D9%83%D9%87-%D9%84%D9%84%D8%AF%D8%A7%D9%8A%D8%AA.jpg'),
    ];
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 75,
                child: Image.asset(
                  AppAssets.carrot1,
                  width: 40,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 24,
                    color: Color(0xff4C4F4D),
                  ),
                  Text(
                    'Dhaka, Banasser',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(
                          0xff4C4F4D,
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.search),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Search Store',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  width: 364,
                  height: 53,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 24),
              Stack(
                children: [
                  CarouselSlider(
                    items: imgList,
                    options: CarouselOptions(
                      height: 200,
                      //autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                      aspectRatio: 2.0,
                    ),
                    carouselController: _carouselController,
                  ),
                  Positioned(
                    bottom: 6,
                    left: MediaQuery.of(context).size.width / 2.2,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      onDotClicked: (index) {
                        _carouselController.animateToPage(index);
                      },
                      effect: const ExpandingDotsEffect(
                        dotHeight: 6,
                        dotWidth: 6,
                        activeDotColor: Color(0xff53B175),
                        dotColor: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
