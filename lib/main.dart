// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ikinciSayfa.dart';
import 'package:flutter_application_1/ucuncuSayfa.dart';

void main() {
  runApp(const MyApp());
}

String bilgi = "---";
//------------------------------------------
// eposta adında string değişken oluştur
// parola adında string değişken oluştur
//------------------------------------------

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
            
            
            //-------------------------- Eposta Bilgisi Al
            // Text() widgeti kullanarak 'eposta adresi' yazdır.
            // TextField() widgeti kullanarak kullanıcının girebileceği bir alan oluştur.
            //---------------------------------------------
            SizedBox(
              height: 40,
            ),
            
            
            
            

            
            //-------------------------- Parola Bilgisi Al
            // Text() widgeti kullanarak 'Parola' yazdır.
            // TextField() widgeti kullanarak kullanıcının girebileceği bir alan oluştur.
            //--------------
//ÖRNEK TextField() --------------------------------------------> TextField(onChanged: ((value) {setState(() {parola = value;});}),),
            //---------------------------------------------
            
            SizedBox(
              height: 40,
            ),
            
            //---------------------------------------------
            //-------------------------- Girilen bilgileri butona tıklandığında kontrol et
            //---------------------------------------------
            ElevatedButton(
                onPressed: () {
                  //---------------------------------------------
                  //IF ELSE kullanarak eposta / parolayı kontrol et
                  // dogruysa ikinciEkran 'a - yanlışsa ucuncuEkran 'a yönlendir.
                  //---------------------------------------------
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
