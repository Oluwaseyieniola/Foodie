import 'package:flutter/material.dart';
import 'package:mobility/Screens/ConcentricScreen.dart';
import 'package:mobility/Screens/Create_Account.dart';
import 'package:mobility/Screens/FavouriteScreen.dart';
import 'package:mobility/Screens/ForgotPassword.dart';
import 'package:mobility/Screens/OfferScreen.dart';
import 'package:mobility/Screens/Phoneno_register.dart';
import 'package:mobility/Screens/ProfileScreen.dart';
import 'package:mobility/Screens/SplashScreen.dart';
import 'package:mobility/Screens/homeScreen.dart';
import 'package:mobility/Screens/introScreen.dart';
import 'package:mobility/Screens/menuScreen.dart';
import 'package:mobility/Screens/newPassScreen.dart';
import 'package:mobility/Screens/sentotp.dart';
import '../Screens/SignUpScreen.dart';
import './Screens/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobility',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: SplashScreen(),
      routes: {
        IntroScreen.routeName: (context) => IntroScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgotPassword.routeName: (context) => ForgotPassword(),
        SentOTPScreen.routeName: (context) => SentOTPScreen(),
        NewPassScreen.routeName: (context) => NewPassScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        OfferScreen.routeName: (context) => OfferScreen(),
        HomePage.routeName: (context) => HomePage(),
        RegisterWithPhoneNumber.routeName: (context) =>
            RegisterWithPhoneNumber(),
      },
    );
  }
}
