import 'package:flutter/material.dart';

class UploadDocuments extends StatelessWidget {
  const UploadDocuments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget submissionStatusIndicator(bool isSubmitted) {
      return isSubmitted
          ? Center(
              child: Image.asset(
                'src/checkmark.png', // Replace 'your_image.png' with the actual path to your image asset
                width: MediaQuery.of(context).size.width *
                    0.055, // Set the desired width
                height: MediaQuery.of(context).size.width *
                    0.055, // Set the desired height
                fit: BoxFit
                    .cover, // Adjust the fit based on your image aspect ratio
              ),
            )
          : Center(
              child: Image.asset(
                'src/crossmark.png', // Replace 'your_image.png' with the actual path to your image asset
                width: MediaQuery.of(context).size.width *
                    0.055, // Set the desired width
                height: MediaQuery.of(context).size.width *
                    0.055, // Set the desired height
                fit: BoxFit
                    .cover, // Adjust the fit based on your image aspect ratio
              ),
            );
    }

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        actions: [
          IconButton(
            onPressed: () {
              // Add your action here
            },
            icon: ClipOval(
              child: Image.asset(
                'src/profile.jpg',
                width: 40, // Set the desired width
                height: 40, // Set the desired height
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color.fromRGBO(254, 249, 243, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
                child: Center(
              child: Text(
                'Upload Documents',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
            Expanded(
                flex: 2,
                //for the grid of documents like file name status ans remarks
                child: Container(
                  child: Column(
                    children: [
                      //for the rows
                      Expanded(
                          //row 1 for name status and remarks
                          child: Container(
                        //color: Colors.amberAccent,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: const Text(
                                    '     File Name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )), //for file name
                            Expanded(
                                child: Container(
                              child: const Text(
                                'Status',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )), //status
                            Expanded(
                                child: Container(
                              child: const Text(
                                'Remarks',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )), //remarks
                          ],
                        ),
                      )),
                      Expanded(
                        // row 2 for Aadhar Card and status button
                        child: Container(
                          //color: Color.fromARGB(255, 227, 232, 228),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: const Text('     Aadhar Card'),
                                ),
                              ), // for file name

                              Expanded(
                                child: Center(
                                  child: submissionStatusIndicator(
                                      true), // initiating with falseflag
                                ),
                              ), // status

                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: const TextField(),
                                ),
                              ), // remarks
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                          //row 3
                          child: Container(
                        //color: Color.fromARGB(255, 208, 204, 217),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: const Text('     X-Ray reports'),
                              ),
                            ), // name of document

                            Expanded(
                              child: Center(
                                child: submissionStatusIndicator(
                                    false), // initiating with falseflag
                              ),
                            ), // status

                            Expanded(
                              flex: 2,
                              child: Container(
                                child: const TextField(),
                              ),
                            ), // remarks
                          ],
                        ),
                      )),
                      Expanded(
                          //row 4
                          child: Container(
                        //color: Color.fromARGB(255, 106, 14, 100),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: const Text('     Doctor prescription'),
                              ),
                            ), //  name of document
                            Expanded(
                              child: Center(
                                child: submissionStatusIndicator(
                                    true), // initiating with falseflag
                              ),
                            ), // status

                            Expanded(
                              flex: 2,
                              child: Container(
                                child: const TextField(),
                              ),
                            ), // remarks
                          ],
                        ),
                      )),
                      Expanded(
                          // row 5
                          child: Container(
                        //color: Colors.amberAccent,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: const Text('     Pan Card'),
                              ),
                            ), // for file name

                            Expanded(
                              child: Center(
                                child: submissionStatusIndicator(
                                    false), // initiating with falseflag
                              ),
                            ), // status

                            Expanded(
                              flex: 2,
                              child: Container(
                                child: const TextField(),
                              ),
                            ), // remarks
                          ],
                        ),
                      )),
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                //new document and recent box
                child: Center(
                  child: SizedBox(
                    //add radius to this container
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.3,

                    child: Column(
                      children: [
                        Expanded(
                            //for the buttons of upload and recent
                            flex: 1,
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, 0.04),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      //button of new upload
                                      padding: const EdgeInsets.all(18.0),

                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue),
                                        ),
                                        child: const Text(
                                          "New Upload",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      //button of recent
                                      padding: const EdgeInsets.all(18.0),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        77, 254, 253, 253))),
                                        child: const Text(
                                          "Recent",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))),
                        Expanded(
                            // upload your document here
                            flex: 3,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(248, 248, 248, 1),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: InkWell(
                                  //onTap: openFilePicker,
                                  child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 243, 240, 240),
                                    borderRadius: BorderRadius.circular(
                                        20.0), // Adjust the radius as needed
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 221, 223,
                                          226), // Set the border color to blue
                                      width:
                                          2.0, // Set the border width as needed
                                      style: BorderStyle
                                          .solid, // Use solid line style
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Click to browse or drag and drop your files ",
                                      style: TextStyle(
                                          color: Colors
                                              .black), // Change the text color as needed
                                    ),
                                  ),
                                ),
                              )),
                            )),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Expanded(
                // verify button
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width *
                      0.8, // Make the button span the entire width
                  margin: const EdgeInsets.symmetric(
                      horizontal: 29.0), // Add margin for spacing
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(
                          219, 15, 39, 1), // Set button background color to red
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(70.0), // Set rounded corners
                      ),
                    ),
                    onPressed: () {
                      // Handle button press here
                    },
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        color: Colors.white, //
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}