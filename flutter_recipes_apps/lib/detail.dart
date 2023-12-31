// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_recipes_apps/api_service.dart';

class Detail extends StatefulWidget {
  String id;

  Detail({required this.id});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: FutureBuilder(
        future: apiService.getDetail(widget.id),
        builder: (_, snapshot) {
          var data = snapshot.data;
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: [
                Container(
                  //ukuran gambar selebar perangkat
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.33,

                  //anda dapat mengisi container dengan gambar menggunakan properti ini
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        data[0]["strMealThumb"],
                      ), // menampilkan gambar
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10, //jarak antara gambar dan konten
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 5,
                    bottom: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, //semua konten dimulai dari sebelah kiri
                    children: [
                      Text(
                        data[0]['strMeal'], //menampilkan judul
                        style: TextStyle(
                          fontSize: 22, //ukuran huruf
                          fontWeight: FontWeight.w400, //ketebalan huruf
                        ),
                      ),
                      Text(
                        data[0]['strArea'], //menampilkan asal makanan
                        style: TextStyle(
                          fontSize: 14, //ukuran huruf
                          fontWeight: FontWeight.w400, //ketebalan huruf
                        ),
                      ),
                      SizedBox(
                        height: 20, //jarak antara judul dan konten
                      ),
                      Text(
                        'Instructions',
                        style: TextStyle(
                          fontSize: 16, //ukuran huruf
                          fontWeight: FontWeight.w500, //ketebalan huruf
                        ),
                      ),
                      Text(
                        data[0]['strInstructions'], //menampilkan resep
                        style: TextStyle(
                          fontSize: 16, //ukuran huruf
                          fontWeight: FontWeight.w400, //ketebalan huruf
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          } else {
            //if the process is not finished then show the indicator process
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
