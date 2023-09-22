import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tile card",
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: tilecard(),
    );
  }
}

class tilecard extends StatelessWidget {
  const tilecard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tilecard"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ExpansionTile(
              title: Text("hello guys"),
              children: [Text("the magical place are here $index")],
            ),
          );
        },
      ),
    );
  }
}
