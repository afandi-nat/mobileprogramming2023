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
          title: Text('Objek Wisata'),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/ungaran.jpg',
              height: 250,
              width: 412,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gunung Ungaran',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Ungaran, Jawa Tengah',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 32,
                        color: Colors.red,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Gunung Ungaran memiliki ketinggian 2.050 meter di atas permukaan laut. Ketinggian ini menarik perhatian para pendaki untuk bisa menaklukkannya. Bahkan gunung stratovolcano ini sangat cocok bagi pendaki pemula yang mulai menggeluti hobi mendaki. Tak hanya wisata alam, daya tarik Gunung Ungaran juga terdapat situs bersejarah yakni Candi Gedong Songo yang merupakan peninggalan Kerajaan Medang abad ke-9. Selain itu, sederet puncak Gunung Ungaran begitu mengesankan. Gunung ini memiliki tiga puncak yakni Botak, Gendol, dan Ungaran. Puncak Ungaran merupakan puncak tertinggi di gunung tersebut. Untuk mencapai puncak, pendaki bisa melalui jalur Medini serta Promasan atau Gedongsongo. Adapun, jalur Curug Lawe dan Nglimut namun sudah ditutup.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
