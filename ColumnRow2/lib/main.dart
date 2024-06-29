import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
       body: Center(
         child: Container(
           width: 300, height: 600,color: Colors.tealAccent,
           child: Column(
             children: [
               Container(
                 child: Row(children: [
                   Container(child: CircleAvatar(backgroundImage: AssetImage("assets/img1.png"),radius: 25,),),
                   Container(
                     margin: EdgeInsets.only(right: 70),
                     child: Column(
                       children: [
                         Text("Hi, Shariar",style: TextStyle(color: Colors.black,fontSize: 20),),
                         Text("Ready for spending time?",style: TextStyle(color: Colors.black,fontSize: 12),)
                       ],
                     ),
                   ),
                   Container(child: Icon(Icons.notifications,size: 25,),)
                 ]),
               ),
               Container(
                 margin: EdgeInsets.only(top:100,right: 100),
                 child: Text("Choose Your Category",style: TextStyle(fontSize: 20,color: Colors.black)),
               ),
               Container(
                 child: Column(
                   children: [
                     Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25,right: 15),
                          child: Column(
                            children: [
                              Container(child: CircleAvatar(backgroundImage: AssetImage("assets/comedy.png"),radius: 25),color: Colors.white,width: 75,height: 75),
                              Container(child: Text("Comedy",textAlign: TextAlign.center),color: Colors.white,width: 75)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25,right: 15),
                          child: Column(
                            children: [
                              Container(child: CircleAvatar(backgroundImage: AssetImage("assets/romance.png"),radius: 25),color: Colors.white,width: 75,height: 75,),
                              Container(child: Text("Romance",textAlign: TextAlign.center),color: Colors.white,width: 75)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Container(child: CircleAvatar(backgroundImage: AssetImage("assets/horror.png"),radius: 25),color: Colors.white,width: 75,height: 75),
                              Container(child: Text("Horror",textAlign: TextAlign.center),color: Colors.white,width: 75)
                            ],
                          ),
                        ),
                      ],
                     ),
                     Row(
                       children: [
                         Container(
                           margin: EdgeInsets.only(top: 25,right: 15),
                           child: Column(
                             children: [
                               Container(child: CircleAvatar(backgroundImage: AssetImage("assets/action.png"),radius: 25),color: Colors.white,width: 75,height: 75),
                               Container(child: Text("Action",textAlign: TextAlign.center),color: Colors.white,width: 75)
                             ],
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 25,right: 15),
                           child: Column(
                             children: [
                               Container(child: CircleAvatar(backgroundImage: AssetImage("assets/thriller.png"),radius: 25),color: Colors.white,width: 75,height: 75,),
                               Container(child: Text("Thriller",textAlign: TextAlign.center),color: Colors.white,width: 75)
                             ],
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 25),
                           child: Column(
                             children: [
                               Container(child: CircleAvatar(backgroundImage: AssetImage("assets/drama.png"),radius: 25),color: Colors.white,width: 75,height: 75),
                               Container(child: Text("Drama",textAlign: TextAlign.center),color: Colors.white,width: 75)
                             ],
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 margin: EdgeInsets.only(top:25,right: 150),
                 child: Text("Popular Movies",style: TextStyle(fontSize: 20,color: Colors.black)),
               ),
               Container(
                 child: Row(
                   children: [
                     Container(child: Image(image: AssetImage("assets/img1.png"),),height: 120,width: 120,margin: EdgeInsets.only(right: 25)),
                     Container(child: Image(image: AssetImage("assets/img1.png"),),height: 120,width: 120,)
                   ],
                 )
               )
             ],
           ),
         ),
       )
    ),
  ));
}