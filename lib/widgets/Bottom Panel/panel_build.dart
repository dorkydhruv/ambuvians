import 'package:flutter/material.dart';

enum Status {
  start,
  address,
  address2,
  confirm,
}

class PanelWidget extends StatefulWidget {
  final ScrollController scrollController;
  const PanelWidget({super.key, required this.scrollController});

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  var state = Status.start;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    switch (state) {
      case Status.start:
        return StartContainer();
      case Status.address:
      // TODO: Handle this case.
      case Status.address2:
      // TODO: Handle this case.
      case Status.confirm:
      // TODO: Handle this case.
    }
    return StartContainer();
  }

  //Start COntainer
  Widget StartContainer() {
    return Container(
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
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: const Text(
                "Vehicals availble near to me",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Ambulance(context: context),
            Ambulance(context: context),
            Ambulance(context: context),
          ],
        ));
  }

  //drop down Ambulance selector Widget
  //will add parameters
  Widget Ambulance({required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Center(
        child: ListTile(
          leading: Image.asset(
            'src/ambulance.png',
            fit: BoxFit.fill,
          ),
          title: const Text(
            "ALS advanced van support 7 person capacity",
            style: TextStyle(color: Colors.white70, fontSize: 10),
            // softWrap: true,
          ),
          trailing: Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFDB0F27),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Book",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
