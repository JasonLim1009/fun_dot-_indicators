import 'package:flutter/material.dart';
import 'package:hw1/pages/page_1.dart';
import 'package:hw1/pages/page_2.dart';
import 'package:hw1/pages/page_3.dart';
import 'package:hw1/pages/page_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: Colors.yellow,
                dotColor: Colors.blue.shade100,
                dotHeight: 30,
                dotWidth: 30,
                spacing: 16,
                verticalOffset: 20
              ),
          ),
        ],
      ),
    );
  }
}
