import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

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
  return StreamBuilder(
    stream: bloc.email,
    builder: (context, snapshot) {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email',
            errorText: snapshot.error),
        onChanged: bloc.changeEmail,
      );
    },
  );
}

Widget passwordField() {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
        obscureText: false,
        decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.error),
        onChanged: bloc.changePassword,
      );
    },
  );
}

Widget submitButton() {
  return RaisedButton(
    child: Text('Login'),
    color: Colors.blue,
    onPressed: () {},
  );
}
