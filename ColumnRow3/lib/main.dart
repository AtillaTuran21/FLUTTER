import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Debit Card", style: TextStyle(fontSize: 24)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            width: 500,
            height: 600,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Image(image: AssetImage('assets/card.png'))),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Column(
                            children: [
                              Container(
                                  child: Icon(Icons.add_card,size: 40),
                                  margin: EdgeInsets.only(top: 30,right: 25),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(width: 2)
                                  )),
                              Container(child: Text("Send"),margin: EdgeInsets.only(right: 25),)
                            ],
                          )),
                      Container(
                          child: Column(
                            children: [
                              Container(
                                  child: Icon(Icons.credit_card_outlined,size: 40),
                                  margin: EdgeInsets.only(top: 30,right: 25),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(width: 2)
                                  )),
                              Container(child: Text("Top Up"),margin: EdgeInsets.only(right: 25),)
                            ],
                          )),
                      Container(
                          child: Column(
                            children: [
                              Container(
                                  child: Icon(Icons.credit_card_off,size: 40),
                                  margin: EdgeInsets.only(top: 30,right: 25),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(width: 2)
                                  )),
                              Container(child: Text("Recive"),margin: EdgeInsets.only(right: 25),)
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Image(image: AssetImage('assets/statistic.png'),width: 40),margin: EdgeInsets.only(right: 25)),
                      Container(child: Text("İstatistik Yazısı"),margin: EdgeInsets.only(right: 25)),
                      Container(child: Icon(Icons.alarm))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Icon(Icons.attach_money,size: 30,),margin: EdgeInsets.only(right: 35)),
                      Container(child: Column(
                        children: [
                          Text("Trafik Limitleri"),
                          Text("Tüm İşlemler")
                        ],
                      ),margin: EdgeInsets.only(right: 45),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Icon(Icons.note_alt_outlined,size: 30,),margin: EdgeInsets.only(right: 35)),
                      Container(child: Column(
                        children: [
                          Text("Durumlar"),
                          Text("Görüntüle",style: TextStyle(fontSize: 13),)
                        ],
                      ),margin: EdgeInsets.only(right: 75),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Icon(Icons.ios_share_rounded,size: 30,),margin: EdgeInsets.only(right: 35)),
                      Container(child: Column(
                        children: [
                          Text("Hesabı Paylaş"),
                          Text("Paylaşabilirsiniz",style: TextStyle(fontSize: 13),)
                        ],
                      ),margin: EdgeInsets.only(right: 40 ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    ),
  );
}
