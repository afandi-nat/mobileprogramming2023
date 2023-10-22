import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.deepPurple,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/images/afandi.jpg'),
                  height: 250,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                ),
                Text(
                  "Afandi Nur Aziz Thohari",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Colors.deepPurple,
                  ),
                ),
                Text(
                  "Semarang, Jawa Tengah",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Seorang yang terlahir dari keluarga sederhana di kota Semarang. Hobi bermain futsal dan membuat video tutorial. tidak tertarik ngepoin orang, kecuali klo orang tersebut menjadi public enemy. Sering memotivasi mahasiswa, padahal dirinya sendiri yang paling membutuhkan motivasi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
