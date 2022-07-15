import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselTrip extends StatefulWidget {
  final List images;
  const CarouselTrip({Key? key, required this.images}) : super(key: key);

  @override
  State<CarouselTrip> createState() => _CarouselTripState();
}

class _CarouselTripState extends State<CarouselTrip> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          CarouselSlider.builder(
              itemCount: widget.images.length,
              itemBuilder: (context, index, viewIndex) {
                return Column(
                  children: [
                    //image Carousel
                    Container(
                      height: 250,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(widget.images[index]),
                            //filterQuality: FilterQuality.medium,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                  height: 250,
                  viewportFraction: 1,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  })),
          //dot Indicator
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
            width: double.maxFinite,
            child: Center(child: buildIndicator()),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: widget.images.length,
      effect: WormEffect(
        dotWidth: 10,
        dotHeight: 10,
        activeDotColor: Colors.black87,
        dotColor: Colors.black45.withOpacity(0.3),
      ),
    );
  }
}
