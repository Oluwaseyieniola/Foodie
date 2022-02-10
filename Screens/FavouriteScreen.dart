import 'package:flutter/material.dart';
import 'package:mobility/Screens/homeScreen.dart';

class FavouriteScreen extends StatelessWidget {
  static const routeName = '/FavouriteScreen';
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
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
