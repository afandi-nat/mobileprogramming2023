import 'package:flutter/material.dart';
import 'package:navigation_routing_app/another_screen.dart';
import 'package:navigation_routing_app/home_screen.dart';
import 'package:navigation_routing_app/replacement_screen.dart';
import 'package:navigation_routing_app/return_data_screen.dart';
import 'package:navigation_routing_app/second_screen.dart';
import 'package:navigation_routing_app/second_screen_with_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(
            ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen': (context) => const ReturnDataScreen(),
        '/replacementScreen': (context) => const ReplacementScreen(),
        '/anotherScreen': (context) => const AnotherScreen(),
      },
    );
  }
}
