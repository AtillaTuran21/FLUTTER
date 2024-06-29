import 'package:flutter/material.dart';
import './cars.dart';

class carInfo extends StatefulWidget {
  carInfo(Cars car){
    this._car = car;
  }

  Cars _car = new Cars("","",0,"");

  @override
  State<carInfo> createState() => _carInfoState(_car);
}

class _carInfoState extends State<carInfo> {

  _carInfoState(Cars _car){
    this.car = _car;
  }
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;

  String checkState = "";

  Cars car = new Cars("","",0,"");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,title: Text("Araba Sayfası",style: TextStyle(color: Colors.black)),centerTitle: true),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Container(
            width: 500,
            height: 500,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 25),
                    child: CheckboxListTile(title: Text(car.brand,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),value: check1, onChanged: (value){
                      setState(() {
                        check1 = !check1;
                      });
                    })
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 25),
                    child: CheckboxListTile(title: Text(car.model,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),value: check2, onChanged: (value){
                      setState(() {
                        check2 = !check2;
                      });
                    })
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 25),
                    child: CheckboxListTile(title: Text(car.engine.toString(),style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),value: check3, onChanged: (value){
                      setState(() {
                        check3 = !check3;
                      });
                    })
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 25),
                    child: CheckboxListTile(title: Text(car.color,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),value: check4, onChanged: (value){
                      setState(() {
                        check4 = !check4;
                      });
                    })
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  width: 250,
                  height: 50,
                  child: TextButton(onPressed: (){
                    setState(() {
                      if(check1 && check2 && check3 && check4){checkState = "Arabanız Hazırlanıyor...";}else{checkState = "Bütün Tikleri İşaretleyiniz...";}
                    });
                  }, child: Text("Onayla",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25))),
                ),
                Container(child: Text(checkState,style: TextStyle(color: Colors.black,fontSize: 20)),)
              ],
            )
        ),
      ),
    );
  }
}