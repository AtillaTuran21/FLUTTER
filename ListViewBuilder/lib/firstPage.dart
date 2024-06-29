import 'package:flutter/material.dart';
import './listItems.dart';
import './secondPage.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {

  TextEditingController titleCont = new TextEditingController();
  TextEditingController subtitleCont = new TextEditingController();
  TextEditingController iconCont = new TextEditingController();
  TextEditingController colorCont = new TextEditingController();

  IconData? icon;
  Color? color;

  List<listItems> tileList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Container(
          width: 500,
          child: Column(
            children: [
              Container(margin: EdgeInsets.only(top: 25),child: TextField(controller: titleCont,decoration: InputDecoration(hintText: "Başlık",border: OutlineInputBorder()),)),
              Container(margin: EdgeInsets.only(top: 25),child: TextField(controller: subtitleCont,decoration: InputDecoration(hintText: "Alt Başlık",border: OutlineInputBorder()),)),
              Container(margin: EdgeInsets.only(top: 25),child: TextField(controller: iconCont,decoration: InputDecoration(hintText: "Ikon(ekle,game,stick)",border: OutlineInputBorder()),)),
              Container(margin: EdgeInsets.only(top: 25),child: TextField(controller: colorCont,decoration: InputDecoration(hintText: "Renk(amber,purpleaccent,deeporangeaccent)",border: OutlineInputBorder()),)),
              Container(width:250,height: 50,color: Colors.amber,margin: EdgeInsets.only(top: 25),child: TextButton(onPressed: () {
                setState(() {
                  switch(iconCont.text){
                    case "ekle":
                      icon = Icons.add;
                      break;
                    case "game":
                      icon = Icons.gamepad_outlined;
                      break;
                    case "stick":
                      icon = Icons.sticky_note_2_outlined;
                      break;

                  }
                  switch(colorCont.text){
                    case "amber":
                      color = Colors.amber;
                      break;
                    case "purpleaccent":
                      color = Colors.purpleAccent;
                      break;
                    case "deeporangeaccent":
                      color = Colors.deepOrangeAccent;
                      break;

                  }
                  tileList.add(listItems(title: titleCont.text, subtitle: subtitleCont.text, icon: icon,color: color));
                });
              }, child: Text("Ekle",style: TextStyle(color: Colors.black),)),),
              Container(width:250,height: 50,color: Colors.amber,margin: EdgeInsets.only(top: 25),child: TextButton(onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => secondPage(itemList: tileList),));
                });
              }, child: Text("Göster",style: TextStyle(color: Colors.black),)),),
            ],
          ),
        ),
      ),
    );
  }
}
