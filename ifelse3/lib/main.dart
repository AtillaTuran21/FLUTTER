import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Scaffold(backgroundColor: Colors.grey,body: Center(child: oyun()))));
}


class oyun extends StatefulWidget {
  const oyun({super.key});

  @override
  State<oyun> createState() => _oyunState();
}
//Ömer Talha Yeşilırmak
class _oyunState extends State<oyun> {
  Random rnd = new Random();
  int tahmin = 0;
  int tutulan = 0;
  String durum = "basla";
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: 400,
        height: 200,
        child: Column(
          children: [
            Container(margin: EdgeInsets.fromLTRB(170, 0, 0, 0),child:Row(children: [ Text(
              tutulan.toString(),
              style: TextStyle(fontSize: 60),
            ),],)),
            Container(
              margin: EdgeInsets.fromLTRB(155, 10, 0, 0),
              child: Row(
                children: [

                  Text(durum.toString(), style: TextStyle(fontSize: 25))
                ],
              ),
            ),
            Container( margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(0)),
                    child: TextButton(
                      child: Text("Başlat",style: TextStyle(color: Colors.red),),
                      onPressed: () {
                        setState(() {
                          tahmin = rnd.nextInt(11);
                          durum = "";
                        });
                      },
                    ),
                  ),
                  Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(0)),
                      child: TextButton(style: ButtonStyle(),
                    child: Text("+",style: TextStyle(color: Colors.red),),
                    onPressed: () {
                      setState(() {
                        if (tutulan != 10) {
                          tutulan++;
                        }
                      });
                    },
                  )),
                  Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(0)),
                      child: TextButton(
                    child: Text("-",style: TextStyle(color: Colors.red),),
                    onPressed: () {
                      setState(() {
                        if (tutulan != 0) {
                          tutulan--;
                        }
                      });
                    },
                  )),
                  Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(0)),
                      child: TextButton(
                    child: Text("Tahmin Et",style: TextStyle(color: Colors.red),),
                    onPressed: () {
                      setState(() {
                        if (tahmin == tutulan) {
                          durum = "Kazandınız";
                        } else if (tahmin < tutulan) {
                          durum = "den küçük";
                        } else if (tahmin > tutulan) {
                          durum = "den büyük";
                        }
                      });
                    },
                  ))
                ],
              ),
            )
          ],
        ));
  }
}
