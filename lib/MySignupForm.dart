import 'package:flutter/material.dart';

class MySignupForm extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  MySignupForm({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page",style:TextStyle(color:Colors.deepPurple)),
        centerTitle:true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First Name: $firstName'),
            Text('Last Name: $lastName'),
            Text('Email: $email'),
            Text('Password: $password'),


          ],
        ),
      ),
    );
  }
}