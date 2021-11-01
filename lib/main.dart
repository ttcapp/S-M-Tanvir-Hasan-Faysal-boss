import 'package:faysa_flatter/home_page.dart';
import 'package:faysa_flatter/open_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyBook());
}
double conHight=100;
double conwidth=100;
bool passviss= true;

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
          scrollDirection: Axis.vertical,
          child: Column(


            children:[
             InkWell(onTap:(){
               setState(() {
                 conHight=300;
                 conwidth=300;
               });
             },
               onDoubleTap: (){
               setState(() {
                 conHight=100;
                 conwidth=100;
               });
               },

               child:  AnimatedContainer(
                 height: conHight,
                 width: conwidth,
                 decoration: BoxDecoration(
                     image: DecorationImage(image: NetworkImage(
                       "https://cdn.pixabay.com/photo/2017/11/10/05/05/whatsapp-2935415_960_720.png",


                     ),
                       fit: BoxFit.cover,

                     ),
                     borderRadius: BorderRadius.circular(200),
                     border: Border.all(
                       color: Colors.green,
                     )
                 ), duration: Duration(milliseconds: 4000,),
               ),
             ),

              Container(
                height: conHight,
                  width: conwidth,
                  child: Image.asset("assets/image/loginimg.png",fit:BoxFit.cover,)
              ),

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
                obscureText: passviss,
                decoration:
                InputDecoration(

                  suffixIcon:
                  InkWell(
                    onTap: (){
                      setState(() {
                        if(passviss==true)
                          passviss=false;
                        else
                          passviss=true;
                      });
                    },
                    child: Icon(Icons.remove_red_eye,color: Colors.pinkAccent,

                    ),
                  ),


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
              SizedBox(height: 10,),
              Text(" Don't have an account?"),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){Navigator.push(context,MaterialPageRoute(
                      builder:(context)=> Newaccount()));
                  }, child: Text("Open New Account")
              ),

            ],
          ),
        ),


      ) ,
    );
  }
}

