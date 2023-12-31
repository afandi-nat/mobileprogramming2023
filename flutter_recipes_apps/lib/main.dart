import 'detail.dart';
import 'api_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes Apps',
      home: RecipesApp(),
    ),
  );
}

class RecipesApp extends StatefulWidget {
  const RecipesApp({super.key});

  @override
  State<RecipesApp> createState() => _RecipesAppState();
}

class _RecipesAppState extends State<RecipesApp> {
  //inisialisasi class
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes Apps'),
      ),
      body: FutureBuilder(
        future: apiService.getData(), //ambil data
        builder: (_, snapshot) {
          //if status koneksi selesai maka tampilkan data
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
            var list = snapshot.data as List;
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(
                          8), //memberikan jarak atas, samping, bawah
                      leading: Image.network(
                        list[index]['strMealThumb'], //menampilkan gambar
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      title: Text(list[index]['strMeal']),

                      //buat icon yang jika ditap maka akan menampilkan detail data
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detail(
                                id: list[index]['idMeal'],
                              ),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_right_alt),
                      ),
                    ),
                    Divider()
                  ],
                );
              },
            );
          } else {
            //jika proses belum selesai, tampilan indikasi proses
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
