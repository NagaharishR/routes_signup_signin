import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SecondFile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Details"),
        ),
        body: MyCustom(),
      ),
    );
  }

}

class MyCustom extends StatefulWidget{
  @override
  State<MyCustom> createState() => MyCustomState();

}

class MyCustomState extends State<MyCustom> {
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
          children: [
            Text("SignIn Form"),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Please Enter Email/Phone Number"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Please Enter Password"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },

              child: Text("Login"),

            ),
          ],
        )
    );

  }

}