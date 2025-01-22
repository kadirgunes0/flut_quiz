import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaslaEkran extends StatelessWidget {
  const BaslaEkran(this.sinavBaslat, {super.key});

  final void Function() sinavBaslat;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Logo(),
          const SizedBox(height: 80),
          Text(
            'Flutter bilgi ölçme sınavı',
            style: GoogleFonts.playfair(
              fontSize: 24.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30.0),
          OutlinedButton.icon(
            onPressed: sinavBaslat,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white)),
            icon: const Icon(Icons.arrow_right_alt , color: Colors.white,),
            label: const Text(
              'Sınava Başla!',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Image.asset(
        'assets/images/quiz-logo.png',
        width: 300.0,
      ),
    );
  }
}
