import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: Center(child: mainUyg()),
    ),
  ));
}

class mainUyg extends StatefulWidget {
  const mainUyg({super.key});

  @override
  State<mainUyg> createState() => _mainUygState();
}

class _mainUygState extends State<mainUyg> {

  TextEditingController idField = new TextEditingController();
  TextEditingController renkField = new TextEditingController();
  TextEditingController degerField = new TextEditingController();
  TextEditingController widthField = new TextEditingController();
  TextEditingController heightField = new TextEditingController();

  double genislik1 = 150;
  double genislik2 = 150;
  double genislik3 = 150;
  double genislik4 = 150;
  
  double yukseklik1 = 150;
  double yukseklik2 = 150;
  double yukseklik3 = 150;
  double yukseklik4 = 150;

  Color renk1 = Colors.amber;
  Color renk2 = Colors.amber;
  Color renk3 = Colors.amber;
  Color renk4 = Colors.amber;
  
  String deger1 = "Yazı";
  String deger2 = "Yazı";
  String deger3 = "Yazı";
  String deger4 = "Yazı";
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // inputlar
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    child: Text("Buton ID : ")),
                Container(
                    width: 250,

                    child: TextField(controller: idField,decoration: InputDecoration(hintText: "Buton ID (1-2-3-4)"))),

              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    child: Text("Renk : ")),
                Container(
                    width: 250,

                    child: TextField(controller: renkField,decoration: InputDecoration(hintText: "Örnek/ Kırmızı için : 16723200"),)),

              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    child: Text("Değer : ")),
                Container(
                    width: 250,

                    child: TextField(controller: degerField,decoration: InputDecoration(hintText: "Buton üstündeki yazıyı girin"))),

              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    child: Text("Genişlik : ")),
                Container(
                    width: 250,

                    child: TextField(controller: widthField,decoration: InputDecoration(hintText: "Genişlik girin"))),

              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    child: Text("Yükseklik : ")),
                Container(
                    width: 250,

                    child: TextField(controller: heightField,decoration: InputDecoration(hintText: "Yükseklik girin"))),

              ],
            ),
          ),
          // oluştur buton
          Container (
            color: Colors.amber,
            width: 250,
            height: 50,
            margin: EdgeInsets.only(top: 15),
            child: TextButton(onPressed: (){
              setState(() {
                if(idField.text == "1"){
                  genislik1 = double.parse(widthField.text);
                  yukseklik1 = double.parse(heightField.text);
                  deger1 = degerField.text;
                  Color colors = Color(int.parse("0xff" + int.parse(renkField.text).toRadixString(16)));
                  renk1 = colors;
                }
                else if(idField.text == "2"){
                  genislik2 = double.parse(widthField.text);
                  yukseklik2 = double.parse(heightField.text);
                  deger2 = degerField.text;
                  Color colors = Color(int.parse("0xff" + int.parse(renkField.text).toRadixString(16)));
                  renk2 = colors;
                }
                else if(idField.text == "3"){
                  genislik3 = double.parse(widthField.text);
                  yukseklik3 = double.parse(heightField.text);
                  deger3 = degerField.text;
                  Color colors = Color(int.parse("0xff" + int.parse(renkField.text).toRadixString(16)));
                  renk3 = colors;
                }
                else if(idField.text == "4"){
                  genislik4 = double.parse(widthField.text);
                  yukseklik4 = double.parse(heightField.text);
                  deger4 = degerField.text;
                  Color colors = Color(int.parse("0xff" + int.parse(renkField.text).toRadixString(16)));
                  renk4 = colors;
                }
              });
            } , child: Text("Oluştur",style: TextStyle(color: Colors.black),)),
          ),
          // 4 kare
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: box(yukseklik1,genislik1,renk1,deger1),margin: EdgeInsets.only(right: 25),),
                Container(child: box(yukseklik2,genislik2,renk2,deger2),margin: EdgeInsets.only(right: 25),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: box(yukseklik3,genislik3,renk3,deger3),margin: EdgeInsets.only(right: 25),),
                Container(child: box(yukseklik4,genislik4,renk4,deger4),margin: EdgeInsets.only(right: 25),),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container box(double yuksek, double genis, Color renk, String yazi) {
    return Container(
      width: genis,
      height: yuksek,
      color: renk,
      child: Center(child: Text(yazi)),
    );
  }
}
