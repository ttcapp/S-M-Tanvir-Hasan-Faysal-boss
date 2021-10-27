import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(
      ),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (appBar: AppBar(
      centerTitle: true,
      title: Text("Facebook"),backgroundColor: Colors.blueAccent,
    ),
      body:


      Container(
        child: SingleChildScrollView(
          child: Column(

            children: [ Image.asset("assets/image/image.jpg"),
              Image.asset("assets/image/img.png.jpg"),
              Image.asset("assets/image/imagell.jpg"),


              Text("give me password",style:TextStyle(fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.bold)
                ,)
            ],
          ),
        ),

      ) ,
    );
  }
}
