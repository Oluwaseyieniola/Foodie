import 'package:flutter/material.dart';
import 'package:mobility/Screens/loginscreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  @override
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isVisible = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    setState(() {
      _isPasswordEightCharacters = false;
      if (password.length >= 8) _isPasswordEightCharacters = true;

      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) _hasPasswordOneNumber = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text('Create Password'),
              Text("Create a secure Password including the following"),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Name")),
              SizedBox(
                height: 20,
              ),
              Text('phone number'),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "+234")),
              SizedBox(
                height: 20,
              ),
              Text('E-mail address'),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "e.g tola@gmail.com")),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (password) => onPasswordChanged(password),
                obscureText: !_isVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: _isVisible
                        ? Icon(
                            Icons.visibility,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: Colors.blue,
                          ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: _isPasswordEightCharacters
                            ? Colors.green
                            : Colors.transparent,
                        border: _isPasswordEightCharacters
                            ? Border.all(color: Colors.transparent)
                            : Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Contains at least eight characters')
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: _hasPasswordOneNumber
                            ? Colors.green
                            : Colors.transparent,
                        border: _hasPasswordOneNumber
                            ? Border.all(color: Colors.transparent)
                            : Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Contains at least 1 number')
                ],
              ),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                height: 40,
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                color: Colors.black,
                child: Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Already have an Account?'),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
                child: Text('SIGN IN'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
