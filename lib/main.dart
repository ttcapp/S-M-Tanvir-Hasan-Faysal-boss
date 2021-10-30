import 'package:faysa_flatter/home_page.dart';
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
      color: Colors.white,

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


            children: [
              Image.asset("assets/image/loginimg.png",fit:BoxFit.cover,),

              Text("Wellcome",style:TextStyle(
                  fontStyle: FontStyle.normal,fontSize: 22,
                  fontWeight: FontWeight.bold),
              ),
            TextFormField(
            decoration:
            InputDecoration(
                hintText: " Eanter Username",
                labelText: "user name"
                ),
             ),
              TextFormField(
                decoration:
                InputDecoration(
                    hintText: " Eanter Password",hintStyle: TextStyle(color: Colors.red),
                    labelText: "Password"
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Login()));
                },
                child: Text("LogIn"),
              ),

              //ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context=> )))
             // }, child: Text("Forget Password"))

            ],
          ),
        ),

      ) ,
    );
  }
}
