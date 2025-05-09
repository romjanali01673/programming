// it's our default code what we get in main file when we create a new project.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{ // we use StatelessWidget when we did't should any changes in runtime.
  @override
  Widget build(BuildContext context) {
    // return CupertinoApp()// for IOS
    // return MaterialApp()// for Android
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hello programmer",
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red, // Explicitly set AppBar color
        ),
        useMaterial3: true,
      ),
      home:DeashBoardScreen(),
    );
  }
}

class DeashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Deashboard"),
        ),
        body: Container(
          // height: 100,
          // width: 200,
          // margin: EdgeInsets.all(10),// we can pass as only
          margin : EdgeInsets.only(left: 10), // here for all sites.
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("hello Programmers!"),
          ),
        ),
    );
  }
}

