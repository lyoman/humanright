import 'package:flutter/material.dart';
import 'package:humanrights/auth/index.dart';

class AuthPage extends StatefulWidget {
  static const String routeName = '/auth';

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _authBloc = AuthBloc(UnAuthState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auth'),
      ),
      body: AuthScreen(authBloc: _authBloc),
    );
  }
}
