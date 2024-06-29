import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 700,
          color: Colors.greenAccent,
          child: Column(
            children: <Widget>[
              Container(
                child: Text("Let's Fine Your Doctor",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
                margin: EdgeInsets.fromLTRB(0, 20, 50, 0),
              ),
              Container(
                  child: Row(
                children: <Widget>[
                  Container(
                    child: Text("Search for doctor",
                        style: TextStyle(color: Colors.black38, fontSize: 25)),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  ),
                  Container(
                    child: Icon(Icons.search, size: 50, color: Colors.white),
                    margin: EdgeInsets.fromLTRB(150, 10, 0, 0),
                  )
                ],
              )),
              Container(
                width: 400,
                height: 585,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text("Catagories", style: TextStyle(fontSize: 25)),
                      margin: EdgeInsets.fromLTRB(0, 10, 260, 0),
                    ),
                    Container(
                      child: Text("Find your doctor quick"),
                      margin: EdgeInsets.fromLTRB(0, 10, 260, 0),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("imgs/diş.png"),
                                    radius: 25,
                                  ),
                                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Dental",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Surgeon",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("imgs/kalp.png"),
                                    radius: 25,
                                  ),
                                  margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Hearth",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Surgeon",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("imgs/göz.png"),
                                    radius: 25,
                                  ),
                                  margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Eyes",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Surgeon",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("imgs/böbrek.png"),
                                    radius: 25,
                                  ),
                                  margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Syringe",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                ),
                                Container(
                                  child: Text("Surgeon",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent)),
                                  margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text("Catagories",
                                style: TextStyle(fontSize: 25)),
                            margin: EdgeInsets.fromLTRB(0, 10, 260, 0),
                          ),
                          Container(
                            child: Text("Find your doctor quick"),
                            margin: EdgeInsets.fromLTRB(0, 10, 260, 0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: 400,
                      height: 150,
                      child: Container(
                        child: Row(
                          children:<Widget> [
                            Container(child: Column(
                              children:<Widget> [
                                Container(child: Text("Dr.Charlie Santa",style: TextStyle(fontSize: 25),),margin: EdgeInsets.fromLTRB(50, 20, 0, 0),),
                                Container(child: Text("Hearth Surgeon"),margin: EdgeInsets.fromLTRB(0, 10, 0, 0),),
                              ],
                            ),),
                            Container(child: Icon(Icons.person,size: 80),margin: EdgeInsets.fromLTRB(92, 0, 0, 0),)
                          ],

                        ),

                      ),

                      color: Colors.lightGreenAccent,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: 400,
                      height: 150,
                      child: Container(
                        child: Row(
                          children:<Widget> [
                            Container(child: Column(
                              children:<Widget> [
                                Container(child: Text("Dr.Natalie Nash",style: TextStyle(fontSize: 25),),margin: EdgeInsets.fromLTRB(50, 20, 0, 0),),
                                Container(child: Text("Eyes Surgeon"),margin: EdgeInsets.fromLTRB(0, 10, 0, 0),),
                              ],
                            ),),
                            Container(child: Icon(Icons.person,size: 80),margin: EdgeInsets.fromLTRB(92, 0, 0, 0),)
                          ],

                        ),

                      ),

                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
