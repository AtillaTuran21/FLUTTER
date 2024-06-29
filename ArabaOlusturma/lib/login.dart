import 'package:flutter/material.dart';
import './carCreate.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  TextEditingController userControl = new TextEditingController();
  TextEditingController passControl = new TextEditingController();

  String username = "admin";
  String password = "1234";

  String loginState = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          child: Column(
            children: [
              Container(margin: EdgeInsets.only(bottom: 25),child: Text("Giriş Yap",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
              Container(margin: EdgeInsets.only(bottom: 25),child: TextField(decoration: InputDecoration(hintText: "Kullanıcı Adı Giriniz"),controller: userControl,)),
              Container(margin: EdgeInsets.only(bottom: 25),child: TextField(decoration: InputDecoration(hintText: "Şifre Giriniz"),controller: passControl,)),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                width: 250,
                height: 50,
                child: TextButton(onPressed: (){
                  setState(() {
                    if(username == userControl.text && password == passControl.text){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => carCreatePage(),));
                    }
                    else{loginState = "Kullanıcı Adı veya Şifre Yanlış.";}
                  });
                }, child: Text("Giriş Yap",style: TextStyle(color: Colors.black))),),
              Text(loginState)

            ],
          ),
        ),
      ),
    );
  }
}
