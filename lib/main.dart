import 'dart:js_interop';

import 'package:flutter/material.dart';

import 'SecondFile.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fill Your Details"),
        ),
        body: MyCustomForm(
        ),
      ),
    );
  }

}

class MyCustomForm extends StatefulWidget{
  @override
  State<MyCustomForm> createState() => MyCustomFormState();

}

class MyCustomFormState extends State<MyCustomForm> {
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
          children: [
            Text("SignUp Form"),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Please Enter Name"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Please Enter Your Phone Number"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Please Enter Your DOB"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Your Email"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Password"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Confirm Password"
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'please enter value';
                  }
                  return null;
                },
              ),
            ),
    ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondFile()));

    }, child: Text("Register"),

  ),

          ],
        )
    );


  }

}



