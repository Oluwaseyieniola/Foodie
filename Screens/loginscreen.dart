import 'package:flutter/material.dart';

import 'package:mobility/Screens/Create_Account.dart';
import 'package:mobility/Screens/ForgotPassword.dart';
import 'package:mobility/Screens/homeScreen.dart';

import 'package:mobility/Widgets/CustomTextInput.dart';

import '../Screens/ForgotPassword.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                ),
                Image.asset(
                  'assets/images/user.png',
                  height: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 25),
                ),
                Spacer(),
                Text("Add your details to login"),
                Image.asset(
                  'assets/images/login.png',
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 30),
                CustomerTextInput(
                  hintText: "username",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomerTextInput(
                  hintText: "password",
                ),
                SizedBox(height: 20),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                        ..pushReplacementNamed(HomeScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(
                      20.0,
                    ))),
                    child: Text("LOGIN"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ForgotPassword.routeName);
                  },
                  child: Text('forgot Password?'),
                ),
                Spacer(),
                Spacer(
                  flex: 3,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomePage.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account? "),
                      Text(
                        'SIGNUP',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
