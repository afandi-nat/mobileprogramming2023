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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: Icon(Icons.person),
          title: Text('My Profile'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Biodata',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('Nama : Afandi Nur Aziz Thohari'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('TTL : Semarang, 11 April 1990'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Jenis Kelamin : Laki-Laki'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Alamat : JL. Parang Kembang 1 No.9 Semarang'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Hobi : Futsal, Badminton, Memancing'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
