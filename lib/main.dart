// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ikinciSayfa.dart';
import 'package:flutter_application_1/ucuncuSayfa.dart';

void main() {
  runApp(const MyApp());
}

String bilgi = "---";
String eposta = "";
String parola = "";

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
        '/iki': (context) => IkinciSayfa(
              kullaniciAdi: '',
              parola: '',
            ),
        '/uc': (context) => UcuncuSayfa(
              kullaniciAdi: '',
              parola: '',
            ),
        //------------------------------------------
        // Bu araya yeni bir route ekle ve yönlendirmesini 3. sayfa yap
        //------------------------------------------
      },

      //------------------------------------------ route bitiş
    );
  }

  ikinciSayfa() {}
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
        title: Text("Oturum Açma Ekranı"),
      ),
      //---------------------------------> AppBar Özelliği -Bitiş
      //---------------------------------> Body Özelliği -Başlangıç
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //BURAYA WIDGET EKLE
            Text("Eposta giriş"),
            TextField(
              onChanged: ((value) {
                setState(() {
                  eposta = value;
                });
              }),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Şifre giriş"),
            TextField(
              onChanged: ((value) {
                setState(() {
                  parola = value;
                });
              }),
            ),
            SizedBox(
              height: 40,
            ),

            ElevatedButton(
                onPressed: () {
                  if (eposta == "konya@konya.com" && parola == "1234") {
                    Navigator.pushNamed(context, '/iki');
                  } else {
                    Navigator.pushNamed(context, '/uc');
                  }
                },
                child: Text(
                  "Oturum Aç",
                  style: TextStyle(fontSize: 40),
                ))
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
