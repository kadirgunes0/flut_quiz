import 'package:flutter/material.dart';

class CevapButonu extends StatelessWidget {
  const CevapButonu(
      {required this.cevapText, required this.basildiginda, super.key});

  final String cevapText;
  final void Function() basildiginda;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: basildiginda,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 0, 37, 102),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          foregroundColor: Colors.white),
      child: Text(
        cevapText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
