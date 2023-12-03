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
            title: Text('Kombinasi List View'),
          ),
          body: ListView(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            children: [
              Text(
                "Horizontal List",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 250,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/03/31/04/25/historic-buildings-2190388_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2021/11/09/10/30/building-6781152_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/01/08/12/26/historic-building-592849_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Vertical List",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 8),
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle for Item $index'),
                    leading: Image.network(
                      'https://afandistudio.net/asset/afandi_studio.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ],
          )),
    );
  }
}
