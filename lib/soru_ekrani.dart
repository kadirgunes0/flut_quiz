import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cevap_butonu.dart';
import 'data/sorular.dart';

class SoruEkrani extends StatefulWidget {
  const SoruEkrani({super.key, required this.secilmisCevap});

  final void Function(String cevap) secilmisCevap;

  @override
  State<StatefulWidget> createState() {
    return _SoruEkraniState();
  }
}

class _SoruEkraniState extends State<SoruEkrani> {
  var anlikSoruIndex = 0;

  void soruCevabi(String secilmisCevap) {
    widget.secilmisCevap(secilmisCevap);
    setState(() {
      anlikSoruIndex++;
    });
  }

  @override
  Widget build(context) {
    final anlikSoru = sorular[anlikSoruIndex];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          anlikSoru.text,
          style: GoogleFonts.playfair(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        ...anlikSoru.karisikCevaplar().map((cevap) {
          return CevapButonu(
              cevapText: cevap,
              basildiginda: () {
                soruCevabi(cevap);
              });
        }),
      ],
    );
  }
}

