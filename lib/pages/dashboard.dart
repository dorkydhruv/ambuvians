import 'package:ambuvians/authentication/login_with_phone.dart';
import 'package:ambuvians/pages/map_pages.dart';
import 'package:ambuvians/pages/profile.dart';
import 'package:ambuvians/widgets/dashboard_cards.dart';
import 'package:ambuvians/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(254, 249, 243, 1),
        appBar: AppBar(
          elevation: 0,
          title: Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('src/ambu.png'),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                    (route) => false,
                  );
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _buildHeader(),
              Row(
                children: [
                  _buildstatusContainer(
                    context: context,
                    color: const Color.fromARGB(255, 233, 211, 211),
                    wid: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Widgets().textHead("AMBU ID:"),
                        space(),
                        Widgets().textSubHead("AMBU123"),
                        space(),
                        Widgets().textHead("Moible Number:"),
                        space(),
                        Widgets().textSubHead("9876543210"),
                        space(),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfilePage(),
                              )),
                          child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text("Profile",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  _buildstatusContainer(
                    context: context,
                    color: const Color.fromRGBO(239, 70, 55, 1),
                    wid: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Health Status',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Alegreya Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Image.asset(
                            'src/healthy_kid.png',
                            height: 100,
                            width: 100,
                          ),
                          Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text("Healthy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          )
                        ]),
                  )
                ],
              ),
              _buildDashboardCards(),
              _buildAmbulanceBooking(),
              space(),
              space(),
              _buildDoctorContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Expanded(
      flex: 0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('src/man.png'),
        ),
        title: Text(
          'Welcome Back',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
        ),
        subtitle: Text(
          'AMBUVIANS',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.notifications_active, size: 30),
      ),
    );
  }

  Widget _buildDashboardCards() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.38,
      width: MediaQuery.of(context).size.width,
      child: const Dashboard_Cards(),
    );
  }

  Widget _buildAmbulanceBooking() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('src/ambulance.png', height: 100, width: 100),
          Column(
            children: [
              const SizedBox(height: 5),
              const Text(
                'Ambulance',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  booking(str: 'Emergency Booking', color: Colors.red),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Map_page(),
                          )),
                      child:
                          booking(str: 'Normal Booking', color: Colors.green)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildstatusContainer(
      {required BuildContext context,
      required Color color,
      required Widget wid}) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: wid,
    );
  }

  Widget _buildDoctorContainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(50)),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset("src/young_man.png", height: 80, width: 100),
            Column(
              children: [
                const Text("Connect with Doctor",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    )),
                Row(
                  children: [
                    booking(str: "chat", color: Colors.green, width: 60),
                    booking(str: "Call", color: Colors.red, width: 60),
                    booking(
                        str: "Vedio call",
                        color: Colors.greenAccent,
                        width: 100)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  space() {
    return const SizedBox(height: 5);
  }

  Widget booking(
      {required String str, required Color color, double? width = 120}) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      height: 30,
      width: width,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          str,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
