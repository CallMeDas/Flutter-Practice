import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CoustomCard.dart';
import 'package:flutter_application_1/widgets/FbFeed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Das',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FaceBook'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
          children: [
            Coustomcard(
              colors: Colors.red,
              name : 'Its Syc',
              margin: EdgeInsets.only(left: 12, top: 12, bottom: 12),
            ),
            Coustomcard(
              colors: Colors.green,
              name : 'Aarya',
              margin: EdgeInsets.only(left: 12, top: 12, bottom: 12),
            ),
            Coustomcard(
              colors: Colors.blue,
              name : 'Risika',
              margin: EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
            ),
            Coustomcard(
              colors: Colors.pink,
              name : 'Kanchan',
              margin: EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
            ),
            Coustomcard(
              colors: Colors.yellow,
              name : 'Jiten',
              margin: EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
            ),
            Coustomcard(
              colors: Colors.cyan,
              name : 'Rabina',
              margin: EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
            ),
          ],
        ),
          ),

          Fbfeed(name: 'Syc', desc: 'I am here to post my adventure!',),
          Fbfeed(name: 'Aarya',desc: 'New post'),
          Fbfeed(name: 'Risika', desc: 'Happy Happy',),
          Fbfeed(name: 'Kanchan',desc:  'Trying new things!'),
          Fbfeed(name: 'Rabina', desc: 'Learing the things!',),
          Fbfeed(name: 'Jiten', desc: 'Loadig...',),
         
        ],
      ),
      
    );
  }
}