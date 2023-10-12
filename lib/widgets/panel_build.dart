import 'package:flutter/material.dart';

class PanelWidget extends StatefulWidget {
  final ScrollController scrollController;
  const PanelWidget({super.key, required this.scrollController});

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      // color: Colors.black,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.black,
      ),
      child: ListView(
        controller: widget.scrollController,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: const Text(
              "Vehicals availble near to me",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(top: 10, right: 10),
            height: height * 0.1,
            // width: width * 0.6,
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ListTile(
                leading: Image.asset(
                  'src/ambulance.png',
                  fit: BoxFit.fill,
                ),
                title: Row(children: [
                  Container(
                    width: width * 0.48,
                    child: Text(
                      "ALS advanced van support 7 person capacity",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                      // softWrap: true,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFDB0F27),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Book")),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
