import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'books.dart';
import 'dbhelper.dart';

class KitapGuncelle extends StatefulWidget {
  final Kitap? guncellenecekKitap;
  const KitapGuncelle({super.key, this.guncellenecekKitap});

  @override
  State<KitapGuncelle> createState() => _KitapGuncelleState();
}

class _KitapGuncelleState extends State<KitapGuncelle> {

  TextEditingController kitapAdiGuncelleCont = TextEditingController();
  TextEditingController yazarAdiGuncelleCont = TextEditingController();
  TextEditingController stokMiktariGuncelleCont = TextEditingController();
  DatabaseHelper dbHelper = DatabaseHelper();


  @override
  Widget build(BuildContext context) {
    stokMiktariGuncelleCont.text=widget.guncellenecekKitap!.stokMiktari.toString();
    kitapAdiGuncelleCont.text=widget.guncellenecekKitap!.kitapAdi;
    yazarAdiGuncelleCont.text=widget.guncellenecekKitap!.yazarAdi;
    return Scaffold(
      appBar: AppBar(
        title: const Text('KİTAP GÜNCELLE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            TextField(
              controller: kitapAdiGuncelleCont,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Kitap Adı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: yazarAdiGuncelleCont,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Yazar Adı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: stokMiktariGuncelleCont,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Stok Miktarı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white),
              onPressed: () async {
                widget.guncellenecekKitap?.kitapAdi = kitapAdiGuncelleCont.text;
                widget.guncellenecekKitap?.yazarAdi = yazarAdiGuncelleCont.text;
                widget.guncellenecekKitap?.stokMiktari = int.parse(stokMiktariGuncelleCont.text);
                int sonuc= await dbHelper.kitapGuncelle(widget.guncellenecekKitap);
                if(sonuc > 0)
                {
                  Fluttertoast.showToast(
                      msg: "Kitap güncelleme işlemi başarılı",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.deepPurple,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }
                Navigator.pop(context);
              },
              child: const Text('Kitap Güncelle'),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: ()async {
      //     widget.guncellenecekKitap?.kitapAdi = kitapAdiGuncelleCont.text;
      //     widget.guncellenecekKitap?.yazarAdi = yazarAdiGuncelleCont.text;
      //     widget.guncellenecekKitap?.stokMiktari = int.parse(stokMiktariGuncelleCont.text);
      //     int sonuc= await dbHelper.kitapGuncelle(widget.guncellenecekKitap);
      //     if(sonuc > 0)
      //     {
      //       Fluttertoast.showToast(
      //           msg: "Kitap güncelleme işlemi başarılı",
      //           toastLength: Toast.LENGTH_SHORT,
      //           gravity: ToastGravity.BOTTOM,
      //           timeInSecForIosWeb: 2,
      //           backgroundColor: Colors.deepPurple,
      //           textColor: Colors.white,
      //           fontSize: 16.0
      //       );
      //     }
      //     Navigator.pop(context);
      //   },
      //   label: const Text('Kitap Güncelle'),
      //   icon: const Icon(Icons.update_rounded),
      // ),
    );
  }
}
