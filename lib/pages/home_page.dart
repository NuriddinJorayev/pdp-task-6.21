// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String id = "home_page";

   const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List lang = [
    Locale('en', "EN"),
    Locale('ru', "RU"),
    Locale('uz', "UZ"),
    Locale('fr', "FR"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
    
            Expanded(
              child: Center(
                child: Text("welcome", 
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),).tr(),
                ),
              ),
    
              Row(
                children: [
                  _textButtonBuilder("English", Colors.green, lang[0]),
                  SizedBox(width: 10.0),
                  _textButtonBuilder("Russian", Colors.red, lang[1]),
                  SizedBox(width: 10.0),
                  _textButtonBuilder("Uzbek", Colors.blue, lang[2]),
                  SizedBox(width: 10.0),
                  _textButtonBuilder("French", Colors.orange, lang[3])
                ],
              )
          ],
        ),
      ),
    );
  }

  // @ TextButton builder function
  Widget _textButtonBuilder(text, back_color, new_lang) => Expanded(
    child:  Container(
      height: (MediaQuery.of(context).size.height / 20) + 5.0,
      child: MaterialButton(
        onPressed: (){
          context.setLocale(new_lang);
        },
        child: Text(text, style: TextStyle(color: Colors.white),),  
        color: back_color),
    ),
  );
}