import 'package:flutter/material.dart';
import 'blocs/bloc.dart';
import 'blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(60.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          SizedBox(
            height: 30.0,
          ),
          submitButton(bloc),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
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

  Widget passwordField(Bloc bloc) {
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

  Widget submitButton(Bloc bloc) {
    return StreamBuilder<Object>(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          color: Colors.blueAccent,
          onPressed: snapshot.hasData ? () => print('Hi Jack') : null,
          child: Text('Log in'),
        );
      },
    );
  }
}
