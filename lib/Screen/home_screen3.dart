import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oncoknow/components/my_drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  final urlImages = [
    // Now a List<String>
    'lib/images/img1.jpeg',
    'lib/images/img2.jpg',
    'lib/images/slide6.png',
    'lib/images/slide_1.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("OncoKnow"),
        actions: [
          // go to cart button
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/profile_page'),
              icon: const Icon(Icons.person_outline_rounded))
        ],
        // backgroundColor: secondary,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                height: 400,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            buildIndicator(activeIndex, urlImages),
          ],
        ),
      ),
    );
  }
}

Widget buildIndicator(int activeIndex, List<String> urlImages) =>
    AnimatedSmoothIndicator(
      effect: const ExpandingDotsEffect(
          dotWidth: 10, dotHeight: 10, activeDotColor: Colors.blue),
      activeIndex: activeIndex,
      count: urlImages.length,
    );

Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.grey)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    );
