import 'package:flutter/material.dart';

class Widgets {
  buildButton(
    String text, {
    required BuildContext context,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: const BoxDecoration(
          color: Color(0xFFDB0F27),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
