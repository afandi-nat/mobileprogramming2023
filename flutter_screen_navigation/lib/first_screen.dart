import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation & Routing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/SecondScreen');
              },
              child: Text("Go to Second Screen"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/SecondScreenWithData',
                    arguments: 'Hello from First Screen!');
              },
              child: Text("Navigation with Data"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final result =
                    await Navigator.pushNamed(context, '/ReturnDataScreen');

                SnackBar snackBar =
                    SnackBar(content: Text('Nama anda $result'));
                scaffoldMessenger.showSnackBar(snackBar);
              },
              child: Text("Return Data from Another Screen"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ReplacementScreen');
              },
              child: Text("Replace Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
