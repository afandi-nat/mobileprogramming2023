import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                'Alun Eropa',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      Text('09:00 - 20:00'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text('Rp 20.000'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Berkonsep arsitektur Eropa, dengan nuansa warna-warni seperti Venetia, Maroko, Mykonos, dan French Village membuat seakan berada di kota-kota indah khas eropa. Berfoto ria bersama, menikmati mendayung di sungai atau bersantai menaiki tram dan kereta api yang antik di Alun Eropa akan menjadi momen tak terlupakan.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
