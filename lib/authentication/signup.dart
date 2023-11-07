import 'package:ambuvians/authentication/sign_in_methods.dart';
import 'package:ambuvians/pages/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 249, 243, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SvgPicture.asset('src/Group 37.svg'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create a New Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Please put your information below to create a new account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const SignupTextField(label: 'Name', hint: 'Enter your name'),
              const SignupTextField(label: 'Email', hint: 'Enter your email'),
              const SignupTextField(
                  label: 'Phone Number', hint: 'Enter your phone number'),
              const SignupTextField(
                  label: 'Password', hint: 'Enter your password'),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(219, 15, 39, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {},
                    child: const Text('SignUp',
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Or Sign Up with'),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    height: 56,
                    width: 56,
                    child: IconButton(
                      onPressed: () async {
                        User? user = await signInWithGoogle();
                        if (user != null) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()),
                            (route) => false,
                          );
                        }
                      },
                      icon: IconTheme(
                        data: IconThemeData(color: null),
                        child: const ImageIcon(
                          AssetImage('assets/images/google.png'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    height: 56,
                    width: 56,
                    child: IconButton(
                      onPressed: () async {
                        User? user = await signInWithFacebook();
                        if (user != null) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()),
                            (route) => false,
                          );
                        }
                      },
                      icon: const ImageIcon(
                        AssetImage('assets/images/facebook.png'),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Continue as Guest',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupTextField extends StatelessWidget {
  final String label;
  final String hint;

  const SignupTextField({super.key, required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white.withOpacity(0.9),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    );
  }
}
