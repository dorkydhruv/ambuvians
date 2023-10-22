import 'package:ambuvians/authentication/signup.dart';
import 'package:ambuvians/pages/dashboard.dart';
import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  //final TextEditingController _emailController = TextEditingController();
  //final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white.withOpacity(0.9),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter Email',
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white.withOpacity(0.9),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter Password',
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            textAlign: TextAlign.end,
          ),
        ),
        
        const SizedBox(height: 5),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(40, 27, 18, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (ctc)=> Dashboard()), (route) => false);
            },
            child: const Text(
              'Sign In',
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
            Text("Don't have an account? "),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: Text('SignUp', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Text('Or Sign Up with'),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
              ),
              height: 56,
              width: 56,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
              ),
              height: 56,
              width: 56,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm),
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
    );
  }
}
