import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List<Color> renk = [Colors.black,Colors.black,Colors.black,Colors.black,Colors.black];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {

        return IconButton(onPressed: (){
          setState(() {
            for(var i = index;i>=0;i--){
              renk[i] = Colors.yellow;
            }
            for(var i = index+1;i<=4;i++){
              renk[i] = Colors.black;
            }
          });
        }, icon: Icon(Icons.star,color: renk[index],));
      },)
    );
  }
}