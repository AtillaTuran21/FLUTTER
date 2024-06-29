import 'package:flutter/material.dart';
import './cars.dart';
import './carInfo.dart';

class carCreatePage extends StatefulWidget {
  const carCreatePage({super.key});

  @override
  State<carCreatePage> createState() => _carCreatePageState();
}

class _carCreatePageState extends State<carCreatePage> {

  Cars car = new Cars("","",0,"");

  TextEditingController markaCont = new TextEditingController();
  TextEditingController modelCont = new TextEditingController();
  TextEditingController motorCont = new TextEditingController();
  TextEditingController renkCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,title: Text("Araba Oluştur",style: TextStyle(color: Colors.black)),centerTitle: true),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: TextField(
                  controller: markaCont,
                  decoration: InputDecoration(hintText: "Marka Giriniz."),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: TextField(
                  controller: modelCont,
                  decoration: InputDecoration(hintText: "Model Giriniz."),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: TextField(
                  controller: motorCont,
                  decoration: InputDecoration(hintText: "Motor Gücü Giriniz."),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: TextField(
                  controller: renkCont,
                  decoration: InputDecoration(hintText: "Renk Giriniz."),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 25),
                width: 250,
                height: 50,
                child: TextButton(onPressed: (){
                  setState(() {
                    car.color = renkCont.text;
                    car.engine = int.parse(motorCont.text);
                    car.model = modelCont.text;
                    car.brand = markaCont.text;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => carInfo(car),));
                  });
                }, child: Text("Araba Oluştur",style: TextStyle(color: Colors.black))),
              )
            ],
          )
        ),
      ),
    );
  }
}
