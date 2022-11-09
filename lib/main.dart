// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String bilgi = "---";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilişim Atölyesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),

      //------------------------------------------ route başlangıç
      routes: {
        '/home': (context) => MyHomePage(),

        //------------------------------------------
        // Bu araya yeni bir route ekle ve yönlendirmesini 3. sayfa yap
        //------------------------------------------
      },

      //------------------------------------------ route bitiş
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------> Scaffold Widget'i -Başlangıç
    return Scaffold(
      //---------------------------------> AppBar Özelliği -Başlangıç
      appBar: AppBar(
        title: Text("Kasım 2022"),
      ),
      //---------------------------------> AppBar Özelliği -Bitiş
      //---------------------------------> Body Özelliği -Başlangıç
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //BURAYA WIDGET EKLE
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
          ],
        ),
      ),
      //---------------------------------> Body Özelliği -Bitiş
    );
    //---------------------------------> Scaffold Widget'i
  }
}
