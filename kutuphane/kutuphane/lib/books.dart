
class Kitap{
  late int id;
  late String kitapAdi;
  late String yazarAdi;
  late int stokMiktari;

  Kitap({
    required this.kitapAdi,
    required this.yazarAdi,
    required this.stokMiktari
  });

  // Veri tabanına veri göndermek için oluşturulan metod
  Map<String, dynamic> veriGonder(){
    var map = Map<String, dynamic>();

    map["kitapAdi"] = kitapAdi;
    map["yazarAdi"] = yazarAdi;
    map["stokMiktari"] = stokMiktari;

    return map;

    // tablo sütun başlıkları ile gelen datayı eşleştirme
   /* return {
      'kitapAdi': kitapAdi,
      'yazarAdi' : yazarAdi,
      'stokMiktari' : stokMiktari
    };

    */
  }

  // Veri tabanından veri almak için oluşturulan metod
  Kitap.veriCek(Map<String, dynamic> map) {
    id = map["id"];
    kitapAdi = map["kitapAdi"];
    yazarAdi = map["yazarAdi"];
    stokMiktari = int.parse(map["stokMiktari"].toString());
  }
}