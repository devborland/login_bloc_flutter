import 'package:flutter/material.dart';
import 'login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log me in with BLoC',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
