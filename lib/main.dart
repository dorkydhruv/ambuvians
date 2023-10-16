import 'package:ambuvians/authentication/login_with_phone.dart';
import 'package:ambuvians/authentication/signup.dart';
import 'package:ambuvians/pages/map_pages.dart';
//import 'package:ambuvians/pages/map_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AMBUvians',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Map_page(),
    );
  }
}
