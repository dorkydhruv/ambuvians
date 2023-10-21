import 'package:ambuvians/widgets/dashboard_cards.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: SizedBox(
              height: 100, width: 100, child: Image.asset('src/ambu.png')),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: const Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('src/man.png'),
                      ),
                      title: Text('Welcome Back'),
                      subtitle: Text('AMBUVIANS'),
                    )
                  ],
                ),
              )
              // Dashboard_Cards(),
            ],
          )),
    );
  }
}
