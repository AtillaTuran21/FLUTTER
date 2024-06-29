import 'dart:io';
import 'package:ders/Loginp.dart';

import 'package:flutter/material.dart';
class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
TextEditingController cont=TextEditingController();
TextEditingController cont1=TextEditingController();

String cinsiyet="";
String sifre="123";
String mesaj="";
Color cinsiyetreng=Colors.white;
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.amber,body: Center(
      child: Column(children: [

        Container(child: Row(
          children: [
            Container(margin: EdgeInsets.only(left: 250,top: 30),child: Text("K.Adı :"),),
            Container(width: 300,height:50,
              margin: EdgeInsets.only(left: 10,top: 30),
              child: TextField(controller: cont,decoration: InputDecoration( hintText: "Adı girin",border: OutlineInputBorder() )),),
          ],
        ),),

        Container(child: Row(
          children: [
            Container(margin: EdgeInsets.only(left: 250,top: 15),child: Text("Sifre :"),),
            Container(width: 300,height:50,
              margin: EdgeInsets.only(left: 15,top: 15),
              child: TextField(controller: cont1,decoration: InputDecoration( hintText: "Şifre girin",border: OutlineInputBorder())),),
          ],
        ),),

        Container(margin: EdgeInsets.only(left: 250,top: 10),child: Row(children: [
          Container(width: 200,height:50,
            child: RadioListTile(value:"Erkek" ,groupValue: cinsiyet,onChanged: (value){
              setState(() {
                cinsiyet=value!;
                cinsiyetreng=Colors.blue;
              }
              );
            },title: Text("Erkek"),),),
          Container(width: 200,height:50,

            child: RadioListTile(value:"Kız" ,groupValue: cinsiyet,onChanged: (value){
              setState(() {
                cinsiyet=value!;
                cinsiyetreng=Colors.pinkAccent;
              }
              );
            },title: Text("Kız"),),),

        ],),),

        Container(margin: EdgeInsets.only(top: 10),child: TextButton(onPressed: () {
          setState(() {
            if(cont.text!=""&&cont1.text!=""&&cinsiyet!="")
              {
                if(cont1.text==sifre)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginp(isim: cont.text,cinsiyet: cinsiyetreng,)));
                  }
                else
                  {
                    mesaj="Şifre Yanlış";
                  }


              }
            else
              {
                mesaj="İsim,  şifre veya cinsiyet boş";
              }
          });
        }, child: Text("Giriş Yap")),),


        Container(child:Text(mesaj) ,),

      ],
      ),

    ),

    );

  }
}
