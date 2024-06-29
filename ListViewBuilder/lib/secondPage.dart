import 'package:flutter/material.dart';
import './listItems.dart';

class secondPage extends StatefulWidget {

  List<listItems> itemList;

  secondPage({super.key, required this.itemList});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(backgroundColor: Colors.teal),
      body: Center(
        child: Container(
          width: 500,
          child: ListView.builder(itemCount: widget.itemList.length,itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 25),
              child: ListTile(
                  title: Text(widget.itemList[index].title.toString()),
                  subtitle: Text(widget.itemList[index].subtitle.toString()),
                  tileColor: widget.itemList[index].color,
                  leading: Icon(widget.itemList[index].icon),
              ),
            );
          },),
        ),
      ),
    );
  }
}
