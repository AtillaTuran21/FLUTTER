import 'package:flutter/material.dart';
import 'kitap_guncelle.dart';
import 'dbhelper.dart';
import 'books.dart';

class KitapListele extends StatefulWidget {
  const KitapListele({super.key});

  @override
  State<KitapListele> createState() => _KitapListeleState();
}

class _KitapListeleState extends State<KitapListele> {

  DatabaseHelper dbHelper = DatabaseHelper();
  List<Kitap> kitaplar = [];

  void kitapListesi() async {
    kitaplar = await dbHelper.kitapListesiGetir();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    kitapListesi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KİTAP LİSTESİ'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(5),
        itemCount: kitaplar.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.white,
            dense: true,
            leading: Text((index+1).toString()),
            title: Text(kitaplar[index].kitapAdi),
            subtitle: Text(kitaplar[index].yazarAdi),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    dbHelper.kitapSil(kitaplar[index].id);
                    setState(() {
                      kitapListesi();
                    });
                  },
                  icon: const Icon(Icons.delete_outline_outlined),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => KitapGuncelle(guncellenecekKitap: kitaplar[index])));
                  },
                  icon: const Icon(Icons.update_rounded),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
            color: Colors.blueGrey,
          );
        },
      ),
    );
  }
}
