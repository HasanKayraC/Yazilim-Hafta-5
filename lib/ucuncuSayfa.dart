import 'package:flutter/material.dart';

class UcuncuSayfa extends StatefulWidget {
  const UcuncuSayfa(
      {super.key, required this.kullaniciAdi, required this.parola});
  final String kullaniciAdi;
  final String parola;
  @override
  State<StatefulWidget> createState() {
    return _UcuncuSayfaState();
  }
}

class _UcuncuSayfaState extends State<UcuncuSayfa> {
  @override
  Widget build(Object context) {
    //---------------------------------> Scaffold Widget'i -Başlangıç
    return Scaffold(
        //---------------------------------> AppBar Özelliği -Başlangıç
        appBar: AppBar(
          title: Text("3. Sayfa"),
        ),
        //---------------------------------> AppBar Özelliği -Bitiş
        //---------------------------------> Body Özelliği -Başlangıç
        body: Center(
          child: Container(
            height: 100,
            width: 350,
            alignment: Alignment.center,
            color: Colors.green,
            child: Text("Gelen Bilgi: "),
          ),
        )
        //---------------------------------> Body Özelliği -Bitiş
        );
    //---------------------------------> Scaffold Widget'i
  }
}
