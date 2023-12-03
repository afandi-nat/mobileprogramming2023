import 'package:flutter/material.dart';
import 'package:flutter_move_screen/detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MoveScreen(),
      ),
    );
  }
}

class MoveScreen extends StatelessWidget {
  const MoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Navigasi"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  image:
                      "https://icist.asia/2022/wp-content/uploads/2022/04/Afandi.png",
                  nama: "Afandi Nur Aziz Thohari",
                  email: "afandi@polines.ac.id",
                  noHp: 082325312882,
                ),
              ),
            );
          },
          child: Text("Detail Screen"),
        ),
      ),
    );
  }
}
