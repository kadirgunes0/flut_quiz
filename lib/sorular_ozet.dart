import 'package:flutter/material.dart';

class SorularOzet extends StatelessWidget {
  const SorularOzet(this.ozetData, {super.key});

  final List<Map<String, Object>> ozetData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: ozetData.map(
          (data) {
            return Row(
              children: [
                Text(((data['soru_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['soru'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['kullanici_cevap'] as String),
                      Text(data['dogru_cevap'] as String),
                    ],
                  ),
                )
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
