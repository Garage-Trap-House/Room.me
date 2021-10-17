import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'SignUp.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Sign In")
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
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:100, bottom:50),
            child: Text(
              'Sign In',
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
            width: 400,
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
                'Sign In'
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
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp(title: 'Room.me',)),
                      );;
                    }),
            ]),
          ),
        ],
      ),
    );
  }
}
