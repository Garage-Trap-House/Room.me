import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'SignIn.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text("Sign Up")
      // ),
      body: Column(
        children: [
          Text(
            'Welcome to Room.me',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            width:400,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:100, bottom:50),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 400,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              //todo code
            },
            child: Text(
                'Sign Up'
            ),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Already have account? ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn(title: 'Room.me',)),
                      );;
                    }),
            ]),
          ),
        ],
      ),
    );
  }
}
