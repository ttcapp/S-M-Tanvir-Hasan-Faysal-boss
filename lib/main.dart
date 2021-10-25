import 'package:flutter/material.dart';

void main() {
  runApp(MyBook());

}
String imagesrc1=("https://p0.pxfuel.com/preview/853/319/641/flower-nature-summer-plant.jpg");
class MyBook extends StatelessWidget {
  const MyBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Faysal App",style:TextStyle
            (
            fontSize: 25,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.red,backgroundColor: Colors.white,
          ),),
        ),
        body: Center(
          child: Container(
            height: height,
            width: width,

            color: Colors.blueAccent,
            child: Column(
              
              children: [

                Container(
                  width: width,
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: Text("give me your Pasword",style:TextStyle(
                    fontSize: 45,fontWeight: FontWeight.bold,fontStyle:
                      FontStyle.italic,color: Colors.indigoAccent,
                  ),),

                ),

                Container(
                  height: height/2,
                    width: width/2,
                    child: Image.network(imagesrc1)),
              ],
            ),
          ),
        ),

    );
  }
}
