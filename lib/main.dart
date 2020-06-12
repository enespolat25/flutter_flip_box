import 'package:flutter/material.dart';
import 'package:flutterflipbox/flip_box_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "3D bottom Navigation Bar"
        ),
      ),
      body: Center(
        child: Text('Uygulama Gövdesi',
        style: TextStyle(
          fontSize: 35,
          color: Colors.blueGrey,
          fontStyle: FontStyle.italic,
        ),),
      ),
      bottomNavigationBar: FlipBoxBar(
        selectedIndex: selectedIndex,
        items: [
          FlipBarItem(
              icon: Icon(Icons.map),
              text: Text("Map"),
              frontColor: Colors.blue,
              backColor: Colors.blueAccent),
          FlipBarItem(
              icon: Icon(Icons.add),
              text: Text("Add"),
              frontColor: Colors.cyan,
              backColor: Colors.cyanAccent),
          FlipBarItem(
              icon: Icon(Icons.chrome_reader_mode),
              text: Text("Read"),
              frontColor: Colors.orange,
              backColor: Colors.orangeAccent),
          FlipBarItem(
              icon: Icon(Icons.print),
              text: Text("Print"),
              frontColor: Colors.purple,
              backColor: Colors.purpleAccent),
          FlipBarItem(
              icon: Icon(Icons.share),
              text: Text("Share"),
              frontColor: Colors.pink,
              backColor: Colors.pinkAccent),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
      ),
    );
  }
}
