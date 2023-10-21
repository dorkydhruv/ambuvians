import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard_Cards extends StatefulWidget {
  const Dashboard_Cards({Key? key});

  @override
  State<Dashboard_Cards> createState() => _Dashboard_CardsState();
}

class _Dashboard_CardsState extends State<Dashboard_Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 4 cards in each row
          childAspectRatio: 1 / 1.7, // Set the aspect ratio to 2/3 (4:3)
        ),
        itemCount: 8, // A total of 8 cards
        itemBuilder: (context, index) {
          return MyCard(index);
        },
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final int index;

  const MyCard(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample images and texts
    /*
    final List<String> images = [
      'image1.jpg',
      'image2.jpg',
      'image3.jpg',
      'image4.jpg',
      'image5.jpg',
      'image6.jpg',
      'image7.jpg',
      'image8.jpg',
    ];
    */

    final List<String> texts = [
      'Prescription',
      'Card 2',
      'Card 3',
      'Card 4',
      'Card 5',
      'Card 6',
      'Card 7',
      'Card 8',
    ];

    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.width * 0.15,
            child: SvgPicture.asset(
              'src/Medical History.svg',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            texts[index],
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
