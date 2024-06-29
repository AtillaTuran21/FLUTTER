import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(

      body:Center(
        child: Container(
          child:Column(mainAxisAlignment: MainAxisAlignment.center ,children:<Widget>
          [

            Container(
              child: Row(
                children:<Widget> [
                  Container(child: Text("Profile",style: TextStyle(fontSize: 22),),margin:EdgeInsets.fromLTRB(0, 0, 0, 0) ,),
                  Container(child: Icon(Icons.person,size: 45),margin: EdgeInsets.fromLTRB(240, 0, 0, 0),),
                ],
              ),
              margin: EdgeInsets.fromLTRB(0, 2, 0, 5),width: 350, height: 100,color: Colors.white,),
            Container(
              child: Column(
                children:<Widget> [
                  Container(child: CircleAvatar(backgroundImage: AssetImage("imgs/mssi.png"),radius: 40),),
                  Container(child: Text("SH Shakil",style: TextStyle(fontSize: 22),),margin: EdgeInsets.fromLTRB(0, 10, 0, 0),),
                  Container(child: Text("shsakakil@email.com",style: TextStyle(fontSize: 22,color: Colors.purpleAccent),),margin: EdgeInsets.fromLTRB(0, 5, 0, 0),),
                ],
              ),
              margin: EdgeInsets.fromLTRB(0, 2, 0, 5),width: 350, height: 150,color: Colors.white,  ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children:<Widget>[
                Container(child: Text("Edit",style: TextStyle(fontSize: 22,color: Colors.purpleAccent),),),
                Container(child:Row(
                  children:<Widget> [

                    Container(child: Icon(Icons.adb_sharp),),
                    Container(child: Icon(Icons.subject),),
                    Container(child: Icon(Icons.face),),
                  ],

                ) ,

                ),

              ],
              ),
              margin: EdgeInsets.fromLTRB(0, 2, 0, 5),width: 350, height: 50, color: Colors.white,),
            Container(
              child: Column(
                children:<Widget> [
                  Row(children:<Widget> [
                    Container(child: Text("Show me as away",style: TextStyle(fontSize: 22),),),
                    Container(child: Icon(Icons.home,size: 50),margin: EdgeInsets.fromLTRB(123, 0, 0, 0),),
                  ],)
                ],
              ),
              margin: EdgeInsets.fromLTRB(0, 2, 0, 5),width: 350, height: 50,color: Colors.white, ),
            Container(child: Column(
              children:<Widget> [
                Row(children:<Widget> [
                  Container(child: Text("Settings",style: TextStyle(fontSize: 22),),),
                  Container(child: Icon(Icons.settings,size: 50),margin: EdgeInsets.fromLTRB(217  , 0, 0, 0),),
                ],)
              ],
            ),
              margin: EdgeInsets.fromLTRB(0, 2, 0, 5),width: 350, height: 50,color: Colors.white, ),

          ],
          ) ,
          width: 400,
          height: 450,
          color: Colors.lightGreen,
        ),

      )





    ),
  ));
}
