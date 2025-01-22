class SinavSoru {
  const SinavSoru(this.text, this.cevap);

  final String text;
  final List<String> cevap;

  karisikCevaplar() {
    final karmaListe = List.of(cevap);

    karmaListe.shuffle();

    return karmaListe;
  }
}
