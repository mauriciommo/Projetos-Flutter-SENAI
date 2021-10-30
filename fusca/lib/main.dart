import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Aula Scaffold",
      theme: ThemeData(primaryColor: Colors.red),
      home: meuWidget(),
    );
  }
}

meuWidget() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Flutter - Scaffold"),
      centerTitle: true,
    ),
    body: Container(
      color: Colors.lightBlue,
    ),
    drawer: Container(
      color: Colors.lime,
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add_a_photo),
      onPressed: (){
        print("Pressionado");
      }),
    bottomNavigationBar: BottomAppBar(
      child: Container(
        height: 40.0,
        color: Colors.lime,
        child: Row(
          children: [
            Text("Meu BottomAppBar"),
            Icon(Icons.home),
            Icon(Icons.phone),
          ],
        ),
      ),
    ),
    persistentFooterButtons: [
      IconButton(icon: Icon(Icons.add_alarm), onPressed: null)
    ],
  );
}
