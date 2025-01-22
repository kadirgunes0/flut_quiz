import '../models/sinav_soru.dart';

const sorular = [
  SinavSoru(
    'Flutter kullanıcı arayüzlerinin ana yapı taşları nelerdir?',
    [
      'Widget\'lar',
      'Components\'lar',
      'Block\'lar',
      'Function\'lar',
    ],
  ),
  SinavSoru('Flutter kullanıcı arayüzleri nasıl oluşturulur?', [
    'Widget\'ları kodda birleştirerek',
    'Widget\'ları görsel bir düzenleyicide birleştirerek',
    'Yapılandırma dosyalarındaki widget\'ları tanımlayarak',
    'iOS için XCode\'u ve Android için Android Studio\'yu kullanarak',
  ]),
  SinavSoru(
    'StatefulWidget\'ın amacı nedir?',
    [
      'Veri değiştikçe kullanıcı arayüzünü güncelleyin',
      'Kullanıcı arayüzü değiştikçe verileri güncelleyin',
      'Veri değişikliklerini yoksay',
      'Verilere bağlı olmayan kullanıcı arayüzünü oluşturma',
    ],
  ),
  SinavSoru(
    'Hangi widget\'ı daha sık kullanmaya çalışmalısınız: StatelessWidget mı yoksa StatefulWidget mı?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Her ikisi de eşit derecede iyi',
      'Yukarıdakilerin hiçbiri',
    ],
  ),
  SinavSoru(
    'StatelessWidget\'taki verileri değiştirirseniz ne olur?',
    [
      'Kullanıcı arayüzü güncellenmiyor',
      'Kullanıcı arayüzü güncellendi',
      'En yakın StatefulWidget güncellendi',
      'İç içe geçmiş tüm StatefulWidget\'lar güncellenir',
    ],
  ),
  SinavSoru(
    'StatefulWidgets\'ın içindeki verileri nasıl güncellemelisiniz?',
    [
      'setState() öğesini çağırarak',
      'updateData()\'yı çağırarak',
      'updateUI() öğesini çağırarak',
      'updateState() öğesini çağırarak',
    ],
  ),
];


