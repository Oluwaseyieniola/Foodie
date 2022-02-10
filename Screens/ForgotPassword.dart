import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobility/Screens/sentotp.dart';
import 'package:mobility/Widgets/CustomTextInput.dart';

class ForgotPassword extends StatelessWidget {
  static const routeName = '/resetPasswordScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Text(
                  'Reset password',
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Please enter your email to retrieve your password',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomerTextInput(hintText: 'Email'),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(
                      30.0,
                    ))),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SentOTPScreen.routeName);
                    },
                    child: Text('Send'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
