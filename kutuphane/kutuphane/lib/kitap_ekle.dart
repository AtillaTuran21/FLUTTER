import 'package:flutter/material.dart';
import 'kitap_listele.dart';
import 'books.dart';
import 'dbhelper.dart';

class KitapEkle extends StatefulWidget {
  const KitapEkle({super.key});

  @override
  State<KitapEkle> createState() => _KitapEkleState();
}

class _KitapEkleState extends State<KitapEkle> {
  TextEditingController kitapAdiController = TextEditingController();
  TextEditingController yazarAdiController = TextEditingController();
  TextEditingController stokMiktariController = TextEditingController();

  DatabaseHelper dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KÜTÜPHANE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            TextField(
              controller: kitapAdiController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Kitap Adı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: yazarAdiController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Yazar Adı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: stokMiktariController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Stok Miktarı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const KitapListele()));
                  },
                  child: const Text('Kitap Listele'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    // kitaplar tablosuna veri ekleme
                    dbHelper.kitapEkle(
                      Kitap(
                        kitapAdi: kitapAdiController.text,
                        yazarAdi: yazarAdiController.text,
                        stokMiktari: int.parse(stokMiktariController.text),
                      ),
                    );
                    kitapAdiController.clear();
                    yazarAdiController.clear();
                    stokMiktariController.clear();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const KitapListele()));
                  },
                  child: const Text('Kitap Ekle'),
                ),
              ],
            ),
            //const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => const KitapListele()));
            //       },
            //       child: const Text('Kitap Listesi'),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // kitaplar tablosuna veri ekleme
      //     dbHelper.kitapEkle(
      //       Kitap(
      //         kitapAdi: kitapAdiController.text,
      //         yazarAdi: yazarAdiController.text,
      //         stokMiktari: int.parse(stokMiktariController.text),
      //       ),
      //     );
      //     kitapAdiController.clear();
      //     yazarAdiController.clear();
      //     stokMiktariController.clear();
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => const KitapListele()));
      //   },
      //   label: const Text('Kitap Ekle'),
      //   icon: const Icon(Icons.add),
      // ),
    );
  }
}
