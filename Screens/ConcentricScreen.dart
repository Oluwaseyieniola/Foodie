import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:mobility/Screens/Create_Account.dart';
import 'package:mobility/Screens/Phoneno_register.dart';
import 'package:mobility/Screens/SignUpScreen.dart';
import 'package:mobility/Screens/loginscreen.dart';

class ConcentricTransition extends StatefulWidget {
  const ConcentricTransition({Key? key}) : super(key: key);

  @override
  _ConcentricTransitionState createState() => _ConcentricTransitionState();
}

class _ConcentricTransitionState extends State<ConcentricTransition> {
  List<dynamic> pages = [
    {'image': 'assets/images/kingbreak.jpg'},
    {'image': 'assets/images/piza.jpg'},
    {'image': 'assets/images/beans.jpg'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ConcentricPageView(
        radius: 30,
        verticalPosition: 0.85,
        colors: [Colors.orange, Colors.orangeAccent, Colors.blue, Colors.black],
        itemBuilder: (index, value) {
          int pageindex = (index % pages.length);
          return Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                pages[pageindex]['image'],
                width: 300,
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(
                    30.0,
                  ))),
                  onPressed: () {
                    Navigator.of(context)
                      ..pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Text(
                    'GET STARTED',
                  )),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                    ..pushReplacementNamed(RegisterWithPhoneNumber.routeName);
                },
                child: Text('SIGNUP'),
              )
            ],
          ));
        },
      ),
    );
  }
}
