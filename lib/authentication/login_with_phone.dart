import 'package:ambuvians/authentication/email.dart';
import 'package:ambuvians/authentication/phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  bool isLoginSelected = true;
  bool isEmailSelected = false; // Indicates whether the login button is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 249, 243, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SvgPicture.asset('src/Group 37.svg'),
              const SizedBox(height: 30),
              const Text(
                'WELCOME',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isLoginSelected = true;
                          isEmailSelected = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isLoginSelected ? Colors.red : Colors.white,
                        elevation: 0, // No elevation
                      ),
                      child: Text(
                        'Phone',
                        style: TextStyle(
                          color: isLoginSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isLoginSelected = false;
                          isEmailSelected = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isEmailSelected ? Colors.red : Colors.white,
                        elevation: 0, // No elevation
                      ),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: isEmailSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:isLoginSelected? 80:40),
              isLoginSelected? Phone():Email()
            ],
          ),
        ),
      ),
    );
  }
}