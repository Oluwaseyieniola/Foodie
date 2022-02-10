import 'package:flutter/material.dart';
import 'package:mobility/Screens/loginscreen.dart';
import 'package:mobility/Widgets/CustomTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/SignUpScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFCCBC),
      body: Container(
          child: SafeArea(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 30),
                      ),
                      Spacer(),
                      Text('Add your details'),
                      Spacer(),
                      CustomerTextInput(hintText: 'Name'),
                      Spacer(),
                      CustomerTextInput(hintText: 'Email'),
                      Spacer(),
                      CustomerTextInput(hintText: 'Mobile no'),
                      Spacer(),
                      CustomerTextInput(hintText: 'Address'),
                      Spacer(),
                      CustomerTextInput(hintText: 'Create Password'),
                      Text(
                          'At least eight characters\n One uppercase\nA number\n Special character'),
                      Spacer(),
                      CustomerTextInput(hintText: 'Confirm Password'),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(
                            30.0,
                          ))),
                          child: Text('SignUp'),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(LoginScreen.routeName);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?  '),
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  )))),
    );
  }
}
