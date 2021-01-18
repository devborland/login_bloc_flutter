import 'package:flutter/material.dart';
import 'blocs/bloc.dart';

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
    return StreamBuilder<Object>(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Enter e-mail',
                hintText: 'you@email.com',
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeEmail);
        });
  }

  Widget passwordField() {
    return StreamBuilder<Object>(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Enter password',
            hintText: 'password',
            errorText: snapshot.error,
          ),
          onChanged: bloc.changePassword,
        );
      },
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
