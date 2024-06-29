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
      body: random(),
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

  String menu0 = "Milkshake";
  String menu1 = "Traliçe";
  String menu2 = "Baklava";
  String menu3 = "Künefe";
  String menu4 = "Sütlü Tatlı";
  String menu5 = "Künefe";
  String menu6 = "Kadayıf";
  String menu7 = "Sütlü İrmik Tatlısı";
  String menu8 = "Frozen";
  var random = new Random();
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  m1deger = random.nextInt(9);
                  if(m1deger==0){m1Yazi = menu0;}
                  else if(m1deger==1){m1Yazi = menu1;}
                  else if(m1deger==2){m1Yazi = menu2;}
                  else if(m1deger==3){m1Yazi = menu3;}
                  else if(m1deger==4){m1Yazi = menu4;}
                  else if(m1deger==5){m1Yazi = menu5;}
                  else if(m1deger==6){m1Yazi = menu6;}
                  else if(m1deger==7){m1Yazi = menu7;}
                  else if(m1deger==8){m1Yazi = menu8;}
                  m2deger = random.nextInt(9);
                  if(m2deger==0){m2Yazi = menu0;}
                  else if(m2deger==1){m2Yazi = menu1;}
                  else if(m2deger==2){m2Yazi = menu2;}
                  else if(m2deger==3){m2Yazi = menu3;}
                  else if(m2deger==4){m2Yazi = menu4;}
                  else if(m2deger==5){m2Yazi = menu5;}
                  else if(m2deger==6){m2Yazi = menu6;}
                  else if(m2deger==7){m2Yazi = menu7;}
                  else if(m2deger==8){m2Yazi = menu8;}
                  m3deger = random.nextInt(9);
                  if(m3deger==0){m3Yazi = menu0;}
                  else if(m3deger==1){m3Yazi = menu1;}
                  else if(m3deger==2){m3Yazi = menu2;}
                  else if(m3deger==3){m3Yazi = menu3;}
                  else if(m3deger==4){m3Yazi = menu4;}
                  else if(m3deger==5){m3Yazi = menu5;}
                  else if(m3deger==6){m3Yazi = menu6;}
                  else if(m3deger==7){m3Yazi = menu7;}
                  else if(m3deger==8){m3Yazi = menu8;}
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
                child: Text("$m1Yazi", style: TextStyle(fontSize: 25),),)
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
                child: Text("$m2Yazi", style: TextStyle(fontSize: 25),),)
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
                child: Text("$m3Yazi", style: TextStyle(fontSize: 25),),)
            ],
          ),
        ],
      ),
    );
  }
}
