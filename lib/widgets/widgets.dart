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
  textHead(String str, {double? size=11}){
    return  Text(str,
                            style: TextStyle(
                      color: const Color(0xFF1A1A1A), 
                                fontSize: size,
                          fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                              height: 0,
),
);
  }
  textSubHead(String str,{double? size=10}){
    return Text(
    str,
    style: TextStyle(
        color: const Color(0xFFDE7100),
        fontSize: size,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0,
    ),
);
  }
}
