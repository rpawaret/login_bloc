import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25),
          ),
          submitButton()
        ],
      ),
    );
  }
}

Widget emailField() {
  return TextField(
    keyboardType: TextInputType.emailAddress,
    decoration:
        InputDecoration(hintText: 'you@example.com', labelText: 'Email'),
  );
}

Widget passwordField() {
  return TextField(
    obscureText: false,
    decoration: InputDecoration(hintText: 'Password', labelText: 'Password'),
  );
}

Widget submitButton() {
  return RaisedButton(
    child: Text('Login'),
    color: Colors.blue,
    onPressed: () {},
  );
}
