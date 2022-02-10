import 'package:flutter/material.dart';

import 'package:mobility/Screens/loginscreen.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = 'Intro';
  @override
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  late int count;
  final List<Map<String, String>> _pages = [
    {
      "image": "darkburger.jpg",
      "title": "Find the Food You Love",
      "desc": "Including Pizza and groceries from stores near you",
    },
    {
      "image": "delivery.jpg",
      "title": "Fast delivery",
      "desc":
          "from any cafeteria in Bowen university it gets delivered in 10 minutes",
    },
    {
      "image": "darkburger.jpg",
      "title": "Live Tracking",
      "desc": "Delivered in 10minutes",
    },
  ];

  @override
  void initState() {
    _controller = new PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFCCBC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {},
                  itemBuilder: (context, index) {
                    return Image.asset('assets/images/darkburger.jpg');
                  },
                  itemCount: _pages.length,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 5, backgroundColor: Colors.white),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    radius: 5,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    radius: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Fast Delivery',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'From any cafeteria around you',
                style: TextStyle(fontSize: 20, color: Colors.orange),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(
                    30.0,
                  ))),
                  onPressed: () {
                    Navigator.of(context)
                      ..pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Text('Hungry?'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
