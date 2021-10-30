import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Wellcome To Facebook",style:
        TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
            ))
      ),)

    );
  }
}
