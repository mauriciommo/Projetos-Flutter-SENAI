import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula - Scaffold",
      theme: ThemeData (primaryColor: Colors.red),
      home: meuWidget(),
    );
  }

  meuWidget() {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Aula 03/07/21-Scaffold"),
      ),
      body: Container(
        color: Colors.lime,
      ),
      drawer: Container(
        color: Colors.deepOrange,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.access_alarms,
        ),
        onPressed: null,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40.0,
          child: Row(
            children: [
              Text("Texto 25"),
              Icon(
                Icons.account_balance_outlined,
              )
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        IconButton(
          icon: Icon(
            Icons.add,
          ),
          onPressed: null,
        )
      ],
    );
  }
}