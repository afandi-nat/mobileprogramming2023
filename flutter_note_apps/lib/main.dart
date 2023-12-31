import 'package:flutter/material.dart';
import 'package:flutter_note_apps/database.dart';
import 'note.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Apps',
      home: const MyHomePage(title: 'Note Apps Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Note>> notes;
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    loadNotes();
  }

  loadNotes() {
    setState(() {
      notes = dbHelper.getNotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: notes,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data?.length == 0)
              return Center(
                child: Text('Still Empty'),
              );

            return Container(
              child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    final currentItem = snapshot.data?[index];

                    return ListTile(
                      title: Text('${currentItem?.title}'),
                    );
                  }),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('error fetching notes'),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
