import 'package:flutter/material.dart';
import 'data/sorular.dart';

class SonucEkrani extends StatelessWidget {
  const SonucEkrani({
    super.key,
    required this.secilmisCevaplar,
    required this.basaDon,
  });

  final List<String> secilmisCevaplar;
  final void Function() basaDon;
  List<Map<String, Object>> ozetData() {
    final List<Map<String, Object>> ozet = [];

    for (var i = 0; i < secilmisCevaplar.length; i++) {
      ozet.add(
        {
          'soru_index': i,
          'soru': sorular[i].text,
          'dogru_cevap': sorular[i].cevap[0],
          'kullanici_cevap': secilmisCevaplar[i],
          'dogru_mu': secilmisCevaplar[i] == sorular[i].cevap[0],
        },
      );
    }

    return ozet;
  }

  @override
  Widget build(BuildContext context) {
    final ozetDatalar = ozetData();
    final toplamSoruSay = sorular.length;
    final toplamDogruSay = ozetDatalar.where((data) {
      return data['dogru_mu'] as bool;
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sonuc: $toplamSoruSay sorudan $toplamDogruSay dogru yaptiniz.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: ozetDatalar.length,
                itemBuilder: (context, index) {
                  final soru = ozetDatalar[index];
                  final dogruMu = soru['dogru_mu'] as bool;
                  var numaralar = soru['soru_index'] as int;

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: dogruMu ? Colors.green : Colors.red,
                      child: Text(
                        '${numaralar + 1}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      soru['soru'] as String,
                      style: const TextStyle(fontSize: 16),
                    ),
                    subtitle: Text(
                      'Doğru Cevap: ${soru['dogru_cevap']} | '
                      'Kullanıcı Cevabı: ${soru['kullanici_cevap']}',
                    ),
                    textColor: dogruMu
                        ? const Color.fromARGB(255, 0, 100, 3)
                        : const Color.fromARGB(255, 99, 7, 0),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: basaDon,
              child: const Text(
                'Tekrar dene?',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
