import 'package:flutter/material.dart';
import 'package:mobility/Screens/FavouriteScreen.dart';
import 'package:mobility/Screens/OfferScreen.dart';
import 'package:mobility/Screens/homeScreen.dart';
import 'package:mobility/Screens/menuScreen.dart';
import 'package:mobility/Screens/newPassScreen.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/ProfileScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFCCBC),
      body: Stack(
        children: [
          SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                AppBar(
                  backgroundColor: Colors.orange,
                  title: Text(""),
                  actions: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Navigator.of(context)
                          ..pushReplacementNamed(MenuScreen.routeName);
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Image.asset('assets/images/tag.png'),
                      onPressed: () {
                        Navigator.of(context)
                          ..pushReplacementNamed(OfferScreen.routeName);
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Image.asset('assets/images/user.png'),
                      onPressed: () {
                        Navigator.of(context)
                          ..pushReplacementNamed(ProfileScreen.routeName);
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                    ),
                    Spacer(),
                    IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          Navigator.of(context)
                            ..pushReplacementNamed(FavouriteScreen.routeName);
                        })
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
