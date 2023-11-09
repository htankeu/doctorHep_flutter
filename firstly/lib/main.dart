import 'package:firstly/screens/homePage.dart';
import 'package:firstly/screens/singUp_screen.dart';
import 'package:firstly/screens/terminBuchung.dart';
import 'package:firstly/services/logInOrRegister.dart';
import 'package:firstly/tools/pallete.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.blackColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

