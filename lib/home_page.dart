import 'package:flutter/material.dart';

final _formkey=GlobalKey<FormState>();
TextEditingController email_numbercomtroller=TextEditingController();
TextEditingController Date_of_birthcomtroller=TextEditingController();
TextEditingController Namecomtroller=TextEditingController();
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: (Text("Open a new  Facebook",style:
        TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
            ))
      ),),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.only(
              top: h*0.08, left: w*0.04,
            bottom: h*0.04,
          ),
          child: Column(

            children: [
              TextFormField(
                controller: email_numbercomtroller,

                decoration: InputDecoration(

                  hintText: "Email or Phone number",
                  labelText: "Email_number",
                ),
              ),
              TextFormField(
                controller: Date_of_birthcomtroller,
                decoration: InputDecoration(
                  hintText: "Date of birth",
                  labelText: "Date_of_birth",
                ),
              ),
              TextFormField(
                controller: Namecomtroller,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  labelText: "Name",
                ),
              ),
             ElevatedButton(
                 onPressed: (){

                 },
                 child: "text")

          ],
    ),

        ),
      ),

    );
  }
}
