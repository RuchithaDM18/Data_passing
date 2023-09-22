import 'package:flutter/material.dart';

import 'MySignupForm.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(
          title: Text("Sign Up Page"),
          centerTitle: true,
        ),
        body:Mysignup(),
      ),


    );
  }
}

class Mysignup  extends StatefulWidget{
  @override
  State<Mysignup > createState()=>_MysignupState ();

}

class _MysignupState extends State<Mysignup >  {
  final formkey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key:formkey,

      child: Padding(
        padding: EdgeInsets.all(20.0),

        child: Column(

          children: [
            TextFormField(
              validator:(value){
                if(value==null||value.isEmpty)
                {
                  return 'please enter the value';
                }
                return null;
              },
              controller: _firstNameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border:UnderlineInputBorder(),
              ),
            ),

            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return'please enter the value';
                }
                return null;
              },
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border:UnderlineInputBorder(),
              ),
            ),

            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'please enter the value';
                }
                return null;
              },
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email ID',
                border:UnderlineInputBorder(),
              ),
            ),

            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'please enter the value';
                }
                return null;
              },
              controller: _passwordController,
              obscureText: true, // For password input
              decoration: InputDecoration(
                labelText: 'Password',
                border:UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  String firstname = _firstNameController.text;
                  String lastname = _lastNameController.text;
                  String email = _emailController.text;
                  String password = _passwordController.text;

                  if (firstname.isEmpty ||
                      lastname.isEmpty ||
                      email.isEmpty ||
                      password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please fill in all fields")),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MySignupForm(
                          firstName: firstname,
                          lastName: lastname,
                          email: email,
                          password: password,
                        ),
                      ),
                    );
                  }
                }
              },
              child: Text('Sign In'),
            )

          ],
        ),
      ),
    );
  }
}