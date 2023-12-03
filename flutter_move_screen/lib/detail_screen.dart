import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  String image;
  String nama;
  String email;
  int noHp;

  DetailScreen({
    Key? key,
    required this.image,
    required this.nama,
    required this.email,
    required this.noHp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              '${this.image}',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
            SizedBox(height: 15),
            Text('Nama : ${this.nama}'),
            SizedBox(height: 15),
            Text('Email : ${this.email}'),
            SizedBox(height: 15),
            Text('No. HP : ${this.noHp}'),
          ],
        ),
      ),
    );
  }
}
