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
    switch (state) {
      case Status.start:
        return StartContainer();
      case Status.address:
        return AddressContainer();
      case Status.address2:
      // TODO: Handle this case.
      case Status.confirm:
      // TODO: Handle this case.
      default:
        return StartContainer();
    }
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

  //Address Container
  Widget AddressContainer() {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.black,
        ),
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(children: [
            const Center(
              child: Text(
                'Select Address',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 0.4,
            ),
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.fromBorderSide(
                        BorderSide(color: Colors.white, width: 1))),
                child: const Center(
                  child: ListTile(
                    leading: Icon(Icons.pin_drop_sharp),
                    title: Text(
                      'From',
                      style: TextStyle(fontSize: 16, color: Colors.white30),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.fromBorderSide(
                        BorderSide(color: Colors.white, width: 1))),
                child: const Center(
                  child: ListTile(
                    leading: Icon(Icons.pin_drop_sharp),
                    title: Text(
                      'To',
                      style: TextStyle(fontSize: 16, color: Colors.white30),
                    ),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Recent Places',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Colors.white54),
            ),
            const SizedBox(
              height: 10,
            ),
            locationTile(),
            locationTile(),
            locationTile(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  color: const Color(0xFFDB0F27),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Center(
                child: Text('Select'),
              ),
            )
          ]),
        ),
      ),
    );
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
          trailing: GestureDetector(
            onTap: () {
              setState(() {
                state = Status.address;
              });
            },
            child: Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(
                color: const Color(0xFFDB0F27),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Book",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Location Tile
  Widget locationTile() {
    return Container(
      decoration: const BoxDecoration(),
      child: const ListTile(
        leading: Icon(Icons.pin_drop_outlined),
        title: Text(
          'Office',
          style: TextStyle(color: Colors.white60),
        ),
        subtitle: Text('Ghaziabad India'),
        trailing: Text('2.27km'),
      ),
    );
  }
}
