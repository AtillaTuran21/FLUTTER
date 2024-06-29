import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home:sayfa1(),
  ));
}

class sayfa1 extends StatefulWidget {
  const sayfa1({super.key});

  @override
  State<sayfa1> createState() => _sayfa1State();
}

class _sayfa1State extends State<sayfa1> {
  String deger = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("Seç Bakalım Soru-1")),),
      body: Center(
        child: Container(width: 300,height:500,color: Colors.amber,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(alignment: Alignment.center,
                child: Text("2012 Londra Olimpit Oyunları'nda ülkemizin kazandığı altın madalyalar hangi dallardadır?"),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Radio(
                        value: "1",
                        groupValue: deger,
                        onChanged: (value) {
                          setState(() {
                            deger = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("Atletizim"),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Radio(
                        value: "2",
                        groupValue: deger,
                        onChanged: (value) {
                          setState(() {
                            deger = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("Halter"),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Radio(
                        value: "3",
                        groupValue: deger,
                        onChanged: (value) {
                          setState(() {
                            deger = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("Güreş"),
                    )
                  ],
                ),
              ),
              Container(child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),child: Text("Sonraki Soru"),onPressed: (){setState(() {
                Navigator.push(context, MaterialPageRoute(builder:(context) => sayfa2(), ));
              });} ,),)
            ],
          ),
        ),
      ),
    );
  }
}
class sayfa2 extends StatefulWidget {
  const sayfa2({super.key});

  @override
  State<sayfa2> createState() => _sayfa2State();
}

class _sayfa2State extends State<sayfa2> {
  String deger="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("Seç Bakalım Soru-2")),),
      body: Center(
        child: Container(width: 300,height:500,color: Colors.amber,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(alignment: Alignment.center,
                child: Text("2017 yılında ilk kez sigortalı çalışmaya başlayan 25 yaşında bir erkek, Türkiye'de kaç yıl daha çalışırsa emekli olur?"),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Radio(
                        value: "1",
                        groupValue: deger,
                        onChanged: (value) {
                          setState(() {
                            deger = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("35-40 Arası"),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Radio(
                        value: "2",
                        groupValue: deger,
                        onChanged: (value) {
                          setState(() {
                            deger = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("25-29 Arası"),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Radio(
                        value: "3",
                        groupValue: deger,
                        onChanged: (value) {
                          setState(() {
                            deger = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("30-34 Arası"),
                    )
                  ],
                ),
              ),
              Container(child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),child: Text("Sonraki Soru"),onPressed: (){setState(() {
                Navigator.push(context, MaterialPageRoute(builder:(context) => sayfa3(), ));
              });} ,),)
            ],
          ),
        ),
      ),
    );
  }
}
class sayfa3 extends StatefulWidget {
  const sayfa3({super.key});

  @override
  State<sayfa3> createState() => _sayfa3State();
}

class _sayfa3State extends State<sayfa3> {
  bool kontrol = false;
  bool kontrol2 = false;
  bool kontrol3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("Seç Bakalım Soru-3")),),
      body:Center(
        child: Container(width: 300,height:500,color: Colors.amber,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(alignment: Alignment.center,
                child: Text("Hangi ülkenin 2 tane başkenti vardır?"),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Checkbox(
                        checkColor: Colors.white,
                        value: kontrol,
                        onChanged: (bool? value) {
                          setState(() {
                            kontrol = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("Güney Afrika"),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Checkbox(
                        checkColor: Colors.white,
                        value: kontrol2,
                        onChanged: (bool? value) {
                          setState(() {
                            kontrol2 = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("Senegal"),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Checkbox(
                        checkColor: Colors.white,
                        value: kontrol3,
                        onChanged: (bool? value) {
                          setState(() {
                            kontrol3 = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("El Salvador"),
                    )
                  ],
                ),
              ),
              Container(child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),child: Text("Bitir"),onPressed: (){setState(() {
                Navigator.push(context, MaterialPageRoute(builder:(context) => sayfa1(), ));
              });} ,),)
            ],
          ),
        ),
      ),
    );
  }
}


