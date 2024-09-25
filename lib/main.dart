import 'package:flutter/material.dart';
import 'match.dart' as matchImport;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wicketkeeper',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 114)),
      ),
      home: const MyHomePage(title: 'Wicketkeeper'),
      routes: <String, WidgetBuilder>{
        "/newmatch" : (BuildContext context) => matchImport.Match(),
      }
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  static const double buttonTextSize = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: 
          Text(title),
      ),
      body: Center(// Center is a layout widget. It takes a single child and positions it in the middle of the parent.
        child: Column(
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/newmatch");
              },
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                child: const Text("New Match", style: TextStyle(color: Colors.white, fontSize: buttonTextSize)),
              ),
            ),
            
            TextButton(
              onPressed: () {},
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Text("Saved Matches", style: TextStyle(color: Colors.white, fontSize: buttonTextSize)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Open settings',
        child: const Icon(Icons.settings), 
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}