import 'package:flutter/material.dart';
//import 'main.dart' as mainImport;

class Match extends StatefulWidget {
  const Match({super.key});
  
  @override
  State<Match> createState() => MatchState();
}

class MatchState extends State<Match> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: 
          Text("Wicketkeeper"),
      ),
      
      body: 
        Text("Page 2"),
    );
  }
}