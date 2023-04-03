import 'package:flutter/material.dart';
import 'package:midterm/bmi_screen.dart';
import 'package:midterm/cricket_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/cricket': (context) => const CricketScreen(),
        '/bmi': (context) => const BMIScreen()
      },
      initialRoute: '/cricket',
    );
  }
}
