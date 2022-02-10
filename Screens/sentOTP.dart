import 'package:flutter/material.dart';
import 'package:mobility/Screens/newPassScreen.dart';

class SentOTPScreen extends StatelessWidget {
  static const routeName = '/sentOTPScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'We have Sent an OTP to your Mobile',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
                'Please check your mobile number 070******12 continue to reet your password'),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OTPinput(),
                OTPinput(),
                OTPinput(),
                OTPinput(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
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
                        .pushReplacementNamed(NewPassScreen.routeName);
                  },
                  child: Text('Next')),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't Receieve? "),
                Text(
                  'Click here.',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

class OTPinput extends StatelessWidget {
  const OTPinput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              '*',
              style: TextStyle(fontSize: 30),
            ),
          ),
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
