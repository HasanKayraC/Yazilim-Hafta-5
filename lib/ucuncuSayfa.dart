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
  Widget build(BuildContext context) {
    //---------------------------------> Scaffold Widget'i -Başlangıç
    return Scaffold(
        //---------------------------------> AppBar Özelliği -Başlangıç
        appBar: AppBar(
          title: Text("3. Sayfa"),
        ),
        //---------------------------------> AppBar Özelliği -Bitiş
        //---------------------------------> Body Özelliği -Başlangıç
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hatalı giriş lütfen tekrar dene",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  "Tekrar Denemek İçin Tıkla",
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        )
        //---------------------------------> Body Özelliği -Bitiş
        );
    //---------------------------------> Scaffold Widget'i
  }
}
