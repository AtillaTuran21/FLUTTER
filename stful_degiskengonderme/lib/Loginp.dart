import 'package:flutter/material.dart';

class Loginp extends StatefulWidget {
 // const Loginp({super.key});
  String isim="";
 Color cinsiyet=Colors.white;
  Loginp({super.key,required this.isim,required this.cinsiyet});

  @override
  State<Loginp> createState() => _LoginpState();
}

class _LoginpState extends State<Loginp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: widget.cinsiyet, body: Center(
      child: Column(children: [

        Container(margin: EdgeInsets.only(top: 50),child: Text("Hoşgeldiniz",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 25 )),),
        Container(margin: EdgeInsets.only(top: 15),child: Text(widget.isim,style:TextStyle(fontWeight:FontWeight.bold, ) ),),


      ]),
    ));
  }
}
