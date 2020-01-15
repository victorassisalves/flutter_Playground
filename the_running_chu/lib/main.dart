import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey[100],
          appBar: AppBar(
            leading: Icon(Icons.flash_on),
            title: Text("The Running Chu"),
            centerTitle: true,
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('asset/runnigPikachu.gif'),
            ),
          ),
        )),
  );
}
