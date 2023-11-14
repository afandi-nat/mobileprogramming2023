import 'package:flutter/material.dart';
import 'package:flutter_contact_app/add_form.dart';
import 'package:flutter_contact_app/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/addForm': (context) => AddForm(),
      },
    );
  }
}
