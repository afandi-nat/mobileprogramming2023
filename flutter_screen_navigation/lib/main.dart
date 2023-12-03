import 'package:flutter/material.dart';
import 'package:flutter_screen_navigation/another_screen.dart';
import 'package:flutter_screen_navigation/first_screen.dart';
import 'package:flutter_screen_navigation/replacement_screen.dart';
import 'package:flutter_screen_navigation/return_data_screen.dart';
import 'package:flutter_screen_navigation/second_screen.dart';
import 'package:flutter_screen_navigation/second_screen_with_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/SecondScreen': (context) => SecondScreen(),
        '/SecondScreenWithData': (context) => SecondScreenWithData(
            ModalRoute.of(context)?.settings.arguments as String),
        '/ReturnDataScreen': (context) => ReturnDataScreen(),
        '/ReplacementScreen': (context) => ReplacementScreen(),
        '/AnotherScreen': (context) => AnotherScreen()
      },
    );
  }
}
