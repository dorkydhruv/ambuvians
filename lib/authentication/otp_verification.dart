import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({Key? key}) : super(key: key);

  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  final List<TextEditingController> otpControllers = List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 249, 243, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          children: <Widget>[
            SvgPicture.asset('src/Group 37.svg'),
            const SizedBox(height: 30,),
            const Text(
              'OTP Authentication',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
             const Text(
              'An authentication code has been sent to your email',
              textAlign: TextAlign.right,
              style: TextStyle(
                
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8), // Adjust the spacing as needed
                  child: SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: otpControllers[index],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 26.0),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Row(
              children:<Widget> [
                const Text('Didn\'t receive the OTP?'),
                TextButton(onPressed: (){}, child: const Text('Resend',
            style: TextStyle(
              color: Colors.red
            ),)),
              ],
            ),
            
            const SizedBox(height: 100),
            ElevatedButton(
  onPressed: () {
    // Validate and submit the OTP
    String otp = otpControllers.map((controller) => controller.text).join();
    if (otp.length == 4) {
      // OTP is valid, perform verification
      // You can add your verification logic here
      print('Verified OTP: $otp');
    } else {
      // Handle invalid OTP
      print('Invalid OTP');
    }
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.red, // Set the button's background color to red
    minimumSize: const Size(300, 50), // Set the button's minimum width and height
  ),
  child: const Text('Continue'),
),
          ],
        ),
      ),
    );
  }
}
