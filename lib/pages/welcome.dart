import 'package:ambuvians/authentication/login_with_phone.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.8; // 90% of the screen height

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: const Color.fromRGBO(254, 249, 243, 8),
      ),
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromRGBO(254, 249, 243, 1),
                height:
                    containerHeight, // Set the height to 90% of the screen height
                //width: MediaQuery.of(context).size.width * 0.9,

                child: Column(
                  children: [
                    //for the blank white space
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                    Expanded(
                      //image
                      flex: 2,
                      child: Container(
                        child: Image.asset(
                          'src/ambulance1.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          'Instant Ambulance Location Tracing',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    const Expanded(
                      //text
                      flex: 2,
                      child: SizedBox(
                        width: 400,
                        child: Text(
                          'Our cutting-edge ambulance service incorporates real-time tracking technology. This enables immediate monitoring of ambulance locations, ensuring swift responses and seamless coordination during emergencies.',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Expanded(
                      //blank space
                      flex: 2,
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'src/dot1.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //page 2 starts here

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromRGBO(254, 249, 243, 1),
                height: containerHeight,
                //width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    //for the blank white space
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                    Expanded(
                      //image
                      flex: 2,
                      child: Container(
                        child: Image.asset(
                          'src/ambulance2.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          'Comprehensive, Rapid, Skilled Ambulance',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    const Expanded(
                      //text
                      flex: 2,
                      child: SizedBox(
                        width: 400,
                        child: Text(
                          'Our comprehensive ambulance service offers rapid response, advanced medical equipment, skilled paramedics, and timely transportation, ensuring lifesaving care during emergencies.',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Expanded(
                      //blank space
                      flex: 2,
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'src/dot2.png',
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

//thied page

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromRGBO(254, 249, 243, 1),
                height: containerHeight,
                //width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    //for the blank white space
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      //image
                      flex: 3,
                      child: Container(
                        child: Image.asset(
                          'src/doctorwelcome.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          'Comprehensive, Rapid, Skilled Ambulance',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    const Expanded(
                      //text
                      flex: 2,
                      child: SizedBox(
                        width: 400,
                        child: Text(
                          'Our comprehensive ambulance service offers rapid response, advanced medical equipment, skilled paramedics, and timely transportation, ensuring lifesaving care during emergencies.',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Expanded(
                      // Get started button
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.8, // Make the button span the entire width
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20.0), // Add margin for spacing
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(219, 15, 39,
                                1), // Set button background color to red
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  50.0), // Set rounded corners
                            ),
                          ),
                          onPressed: () {
                            // Handle button press here
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                              (route) => false,
                            );
                          },
                          // onPressed: () {
                          //   // Handle button press here
                          //   Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Login()),
                          //   );
                          // },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.black, //
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'src/dot3.png',
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
