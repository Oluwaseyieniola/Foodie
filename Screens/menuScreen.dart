import 'package:flutter/material.dart';
import 'package:mobility/Screens/FavouriteScreen.dart';
import 'package:mobility/Screens/OfferScreen.dart';
import 'package:mobility/Screens/ProfileScreen.dart';
import 'package:mobility/Screens/homeScreen.dart';

class MenuScreen extends StatelessWidget {
  static const routeName = '/MenuScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFCCBC),
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          SafeArea(
              child: Column(children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context)
                            ..pushReplacementNamed(HomeScreen.routeName);
                        },
                        splashColor: Colors.orange,
                        icon: Image.asset(
                          'assets/images/back.png',
                          height: 20,
                        ),
                      ),
                      Image.asset(
                        "assets/images/cart.png",
                        height: 30,
                      )
                    ])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: ShapeDecoration(
                    shape: StadiumBorder(), color: Colors.brown),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search meal'),
                ),
              ),
            ),
          ]))
        ]));
  }
}
