import 'package:ambuvians/authentication/otp_verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

final _auth = FirebaseAuth.instance;

void phoneAuthentication(String phoneno) async => _auth.verifyPhoneNumber(
    phoneNumber: phoneno,
    verificationCompleted: (PhoneAuthCredential credential) async {
      await _auth.signInWithCredential(credential);
    },
    verificationFailed: (FirebaseAuthException e) {
      if (e.code == 'invalid-phone-number') {
        print('The provided phone number is not valid.');
      }
    },
    codeSent: (verificationId, resendToken) async {


      // Update the UI - wait for the user to enter the SMS code
      String smsCode = 'xxxx';

      // Create a PhoneAuthCredential with the code
      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

      // Sign the user in (or link) with the credential
      await _auth.signInWithCredential(credential);
    },
    timeout: const Duration(seconds: 60),
    codeAutoRetrievalTimeout: (String verificationId) {
      // Auto-resolution timed out...
    },
  );



class _PhoneState extends State<Phone> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(children: <Widget>[
        Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white.withOpacity(0.9),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText:
                      'Enter Phone Number',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(219, 15, 39, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  phoneAuthentication(_textEditingController.text);
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (tc)=> OTPVerificationPage()), (route) => false);
                },
                child: const Text(
                  'GET OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
      ],),
    );
  }
}