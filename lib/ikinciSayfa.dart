import 'package:flutter/material.dart';

class IkinciSayfa extends StatefulWidget {
  const IkinciSayfa(
      {super.key, required this.kullaniciAdi, required this.parola});
  final String kullaniciAdi;
  final String parola;
  @override
  State<StatefulWidget> createState() {
    return _ikinciSayfaState();
  }
}

class _ikinciSayfaState extends State<IkinciSayfa> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------> Scaffold Widget'i -Başlangıç
    return Scaffold(
      //---------------------------------> AppBar Özelliği -Başlangıç
      appBar: AppBar(
        title: Text("2. Sayfa"),
      ),
      //---------------------------------> AppBar Özelliği -Bitiş
      //---------------------------------> Body Özelliği -Başlangıç
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Giriş Onaylandı",
            style: TextStyle(fontSize: 31),
          ),
        ]),
      ),

      //---------------------------------> Body Özelliği -Bitiş
    );
    //---------------------------------> Scaffold Widget'i
  }
}
