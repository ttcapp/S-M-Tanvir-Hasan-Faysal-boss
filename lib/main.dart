import 'package:flutter/material.dart';

void main() {
  runApp(MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookHomePage(),
    );

  }
}
class BookHomePage extends StatefulWidget {
  const BookHomePage({Key? key}) : super(key: key);

  @override
  _BookHomePageState createState() => _BookHomePageState();
}

class _BookHomePageState extends State<BookHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
      title: Text("Bismillah"),
     ) ,
    );
  }
}

