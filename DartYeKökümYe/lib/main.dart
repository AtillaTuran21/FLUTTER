import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.purple,
      body: mainClass(),
    ),
  ));
}

class mainClass extends StatefulWidget {
  const mainClass({super.key});

  @override
  State<mainClass> createState() => _mainClassState();
}

class _mainClassState extends State<mainClass> {
  TextEditingController adField = new TextEditingController();
  TextEditingController tcField = new TextEditingController();
  String tcYazi = "";
  List<int> tcler = [];
  String eklenmeDurumu = "";
  int hak = 2;
  int soruSayisi = 1;
  List<Color> renkler = [
    Colors.purpleAccent,
    Colors.purpleAccent,
    Colors.purpleAccent,
    Colors.purpleAccent,
    Colors.purpleAccent,
    Colors.purpleAccent,
  ];
  List<String> sorular = [
    "Hakkınız Bitmiştir.",
    "Soru : Horozlar Yumurtlar mı?",
    "Soru : Everest Dağı 8848 metre mi?",
    "Soru : Çin, Asya kıtasında mı?",
    "Soru : Türkiyenin Başkenti Kocaeli mi?",
    "Soru : ABD'nin Başkenti Washington, DC mi?",
    "Soru : while(true){} sınırlı sayıda mı döner",
    "Sorular Bitmiştir",
  ];
  List<bool> cevaplar = [false, false, true, true, false, true, false, false];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 600,
        color: Colors.purpleAccent,
        child: Column(
          children: [
            //yarışmacı ekle yazısı
            Container(
                child: Text("Yarışmacı Ekle"),
                margin: EdgeInsets.only(top: 15)),
            // ad field
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Text("Ad : "), margin: EdgeInsets.only(right: 30)),
                  Container(
                      child: TextField(controller: adField),
                      width: 250,
                      height: 50),
                ],
              ),
            ),
            //tc field
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Text("TC : "), margin: EdgeInsets.only(right: 15)),
                  Container(
                      child: TextField(controller: tcField),
                      width: 250,
                      height: 50),
                ],
              ),
            ),
            //buton
            Container(
                margin: EdgeInsets.only(top: 20),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        tcYazi = tcField.text;
                        if (tcler.contains(int.parse(tcYazi))) {
                          eklenmeDurumu = "Yarışmacı Zaten Var";
                        } else {
                          tcler.add(int.parse(tcYazi));
                          eklenmeDurumu = "Yarışmacı Eklendi.";
                        }
                      });
                    },
                    child: Text("Yarışmacı Ekle"))),
            //yarışmacı eklenme durumu
            Container(
              child: Text(eklenmeDurumu),
              margin: EdgeInsets.only(top: 15),
            ),
            // ye kürküm ye yazısı ve hakkın olduğu her
            Container(
                margin: EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Kim Para Istemezki..",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      width: 50,
                      height: 50,
                      child: Center(
                        child: Text("${(hak+1).toString()}",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                    )
                  ],
                )),
            //soru kısmı
            Container(
              child: Container(
                  child: Text("${sorular[soruSayisi]}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.only(top: 30)),
            ),
            // evet hayır butonu
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 50, top: 50),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(hak>0){
                              if(soruSayisi<7){
                                if (cevaplar[soruSayisi] == true) {
                                  renkler[soruSayisi-1] = Colors.lightGreenAccent;
                                  soruSayisi++;
                                } else {
                                  hak--;
                                  renkler[soruSayisi-1] = Colors.redAccent;
                                  soruSayisi++;
                                }
                              }
                            }else{
                              soruSayisi=0;
                              hak=-1;
                            }
                          });
                        },
                        child: Text("Evet", style: TextStyle(fontSize: 25))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(hak>0){
                              if(soruSayisi<7){
                                if (cevaplar[soruSayisi] == false) {
                                  renkler[soruSayisi-1] = Colors.lightGreenAccent;
                                  soruSayisi++;
                                } else {
                                  renkler[soruSayisi-1] = Colors.redAccent;
                                  hak--;
                                  soruSayisi++;
                                }
                              }
                            }else{
                              soruSayisi=0;
                              hak=-1;
                            }
                          });
                        },
                        child: Text("Hayır", style: TextStyle(fontSize: 25))),
                  )
                ],
              ),
            ),
            //para kısımları
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: renkler[5],),
                    child: Center(child: Text("1500 TL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: renkler[4],),
                    child: Center(child: Text("1250 TL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: renkler[3],),
                    child: Center(child: Text("1000 TL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: renkler[2],),
                    child: Center(child: Text("750 TL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: renkler[1],),
                    child: Center(child: Text("500 TL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: renkler[0],),
                    child: Center(child: Text("250 TL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
