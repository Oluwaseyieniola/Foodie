import 'package:flutter/material.dart';
import 'package:mobility/Screens/introScreen.dart';
import 'package:mobility/Widgets/CustomTextInput.dart';

class NewPassScreen extends StatelessWidget {
  static const routeName = '/NewPass';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Align(alignment: Alignment.center),
            SizedBox(
              height: 20,
            ),
            Text(
              ' Set New Password',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Please enter your email to receive a link to reset your password'),
            CustomerTextInput(hintText: 'New Password'),
            SizedBox(
              height: 20,
            ),
            CustomerTextInput(hintText: 'Confirm Password'),
            SizedBox(
              height: 20,
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
                    ..pushReplacementNamed(IntroScreen.routeName);
                },
                child: Text('Next'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
