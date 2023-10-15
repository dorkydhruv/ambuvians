import 'package:ambuvians/widgets/Bottom%20Panel/panel_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Map_page extends StatefulWidget {
  const Map_page({super.key});

  @override
  State<Map_page> createState() => _Map_pageState();
}

class _Map_pageState extends State<Map_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: 500,
        panelBuilder: (sc) => PanelWidget(scrollController: sc),
        body: Container(
          child: FlutterMap(
            options: MapOptions(backgroundColor: Colors.black),
            children: [
              TileLayer(
                minZoom: 1,
                maxZoom: 18,
                backgroundColor: Colors.black,
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
              )
            ],
          ),
        ),
      ),
    );
  }
}
