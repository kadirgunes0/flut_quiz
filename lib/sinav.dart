import 'package:flutter/material.dart';
import 'baslangic_ekran.dart';
import 'soru_ekrani.dart';
import 'data/sorular.dart';
import 'sonuc_ekrani.dart';

class Sinav extends StatefulWidget {
  const Sinav({super.key});

  @override
  State<Sinav> createState() {
    return _SinavState();
  }
}

class _SinavState extends State<Sinav> {
  List<String> secilenCevaplar = [];
  var aktifEkran = 'baslangic-ekran';

  void ekranDegistirme() {
    setState(() {
      aktifEkran = 'soru-ekrani';
    });
  }

  void cevapSec(String cevap) {
    secilenCevaplar.add(cevap);

    if (secilenCevaplar.length == sorular.length) {
      setState(() {
        aktifEkran = 'sonuc-ekrani';
      });
    }
  }

void bastanBasla() {
    setState(() {
      secilenCevaplar = [];
      aktifEkran = 'questions-screen';
    });
  }
  
  @override
  Widget build(context) {
    Widget ekranWidget = BaslaEkran(ekranDegistirme);

    if (aktifEkran == 'soru-ekrani') {
      ekranWidget = SoruEkrani(
        secilmisCevap: cevapSec,
      );
    }

    if (aktifEkran == 'sonuc-ekrani') {
      ekranWidget = SonucEkrani(
        secilmisCevaplar: secilenCevaplar, basaDon: bastanBasla,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 25, 0, 255),
                Color.fromARGB(255, 0, 195, 255),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: ekranWidget,
        ),
      ),
    );
  }
}
