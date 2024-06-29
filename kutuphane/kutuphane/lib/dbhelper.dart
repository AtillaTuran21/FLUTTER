import 'books.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // Veri Tabanı Oluşturma Fonksiyonu
  // Database tipinde fonksiyon oluşturma
  // Database veri tipi sqflite paketinden geliyor
 Future<Database> veriTabaniOlustur() async {
    // Veri Tabanı ismi
   // const String databaseName = 'kitapVeriTabani.db';
    // Veri tabanı yolu
    final String databasePath = await getDatabasesPath();
    // Veri tabanı yolu ile veri tabanı ismi join metodu ile birleştiriliyor
    final String path = join(databasePath, "kitapVeriTabani.db");

    // openDatabase metodu veri tabanı yoksa veri tabanını oluşturur
    // veri tabanı varsa var olan veri tabanını açar.
    final Database veriTabani = await openDatabase(
        path,
        version: 1,
        onCreate: tabloOlustur);
    return veriTabani;
  }
  // kitaplar isminde tablo oluştur
  void tabloOlustur(Database vt, int version) async{
    await vt.execute(
        'CREATE TABLE kitaplar ('
            'id INTEGER PRIMARY KEY, '
            'kitapAdi TEXT NOT NULL, '
            'yazarAdi TEXT NOT NULL, '
            'stokMiktari INTEGER NOT NULL)');
  }

  // Veri tabanına eklenen kitaplar için liste oluştur
  List<Kitap> ekliKitaplar = [];

  // kitaplar tablosuna veri ekleme işlemi
  Future<int> kitapEkle(Kitap yeniKitap) async{
    Database veritabani = await veriTabaniOlustur();
    var ekle = await veritabani.insert('kitaplar', yeniKitap.veriGonder());

    await kitapListesiGetir();
    return ekle;
  }

  // kitaplar tablosundaki verileri alma
  Future<List<Kitap>> kitapListesiGetir() async{
    Database veritabani = await veriTabaniOlustur();
    var sorgu = await veritabani.query('kitaplar');
    List<Kitap> sonuc = List.generate(sorgu.length, (int index) => Kitap.veriCek(sorgu[index]));
   // ekliKitaplar = sonuc;
    return sonuc;

  }
  // kitaplar tablosunda veri silme işlemi
  Future<int> kitapSil(int kitapId) async{
    Database veritabani = await veriTabaniOlustur();
    var silinenSatir = await veritabani.delete('kitaplar', where: "id=?",whereArgs: [kitapId]);
    await kitapListesiGetir();
    return silinenSatir;
  }
  // kitaplar tablosunda veri güncelleme işlemi
  Future<int> kitapGuncelle(Kitap? yeniKitap) async {
    Database veritabani = await veriTabaniOlustur();
    var guncelle = await veritabani.update('kitaplar',yeniKitap!.veriGonder(), where: "id=?", whereArgs: [yeniKitap.id]);
    return guncelle;
  }
}
