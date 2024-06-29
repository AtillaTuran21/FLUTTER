import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("Restorant"),
      ),
      backgroundColor: Colors.amber,
      body: Center(child: random()),
      ),
    ),
  );
}

class random extends StatefulWidget {
  const random({super.key});

  @override
  State<random> createState() => _randomState();
}

class _randomState extends State<random> {
  var m1deger = 0;
  var m2deger = 0;
  var m3deger = 0;
  String m1Yazi = "MilkShake";
  String m2Yazi = "MilkShake";
  String m3Yazi = "MilkShake";
  var m1Fiyat = 0;
  var m2Fiyat = 0;
  var m3Fiyat = 0;

  var menuler = ["Milkshake","Tiramisu","Baklava","Künefe","Sütlü Tatlı","Traliçe","Kadayıf","Sütlü İrmik Tatlısı","Frozen",];
  var fiyatlar = [10,20,30,40,50,60,70,80,90];
  var toplam = 0;
  var random = new Random();
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.amberAccent
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      m1deger = random.nextInt(9);
                      m1Yazi = menuler[m1deger];
                      m1Fiyat = fiyatlar[m1deger];

                      m2deger = random.nextInt(9);
                      m2Yazi = menuler[m2deger];
                      m2Fiyat = fiyatlar[m2deger];

                      m3deger = random.nextInt(9);
                      m3Yazi = menuler[m3deger];
                      m3Fiyat = fiyatlar[m3deger];


                    });
                  },
                  child: Text("Menü Tavsiye",style: TextStyle(fontSize: 25),)),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/$m1deger.png'),
                      radius: 60,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text("$m1Yazi : $m1Fiyat TL", style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,decoration: TextDecoration.underline),),)
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/$m2deger.png'),
                      radius: 60,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text("$m2Yazi : $m2Fiyat TL", style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,decoration: TextDecoration.underline),),)
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/$m3deger.png'),
                      radius: 60,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text("$m3Yazi : $m3Fiyat TL", style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,decoration: TextDecoration.underline),),)
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightGreenAccent,
                        border: Border.all(color: Colors.black,width: 2)
                    ),
                    child: TextButton(onPressed: () {
                      setState(() {
                        toplam = m1Fiyat+m2Fiyat+m3Fiyat;
                      });
                    }, child: Text("Hesapla", style: TextStyle(color: Colors.black,fontSize: 25),)),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 50),
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightGreenAccent
                      ),
                      child: Center(child: Text("Toplam : $toplam TL",style: TextStyle(color: Colors.black,fontSize: 30,)),)
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
