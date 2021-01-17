import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(160.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          SizedBox(
            height: 30.0,
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Enter e-mail',
        hintText: 'you@email.com',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Enter password',
        hintText: 'password',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {},
      child: Text('Log in'),
    );
  }
}
