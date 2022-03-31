import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humanrights/auth/index.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({
    required AuthBloc authBloc,
    Key? key,
  })  : _authBloc = authBloc,
        super(key: key);

  final AuthBloc _authBloc;

  @override
  AuthScreenState createState() {
    return AuthScreenState();
  }
}

class AuthScreenState extends State<AuthScreen> {
  AuthScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        bloc: widget._authBloc,
        builder: (
          BuildContext context,
          AuthState currentState,
        ) {
          if (currentState is UnAuthState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorAuthState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentState.errorMessage ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text('reload'),
                    onPressed: _load,
                  ),
                ),
              ],
            ));
          }
           if (currentState is InAuthState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(currentState.hello),
                ],
              ),
            );
          }
          return Center(
              child: CircularProgressIndicator(),
          );
          
        });
  }

  void _load() {
    widget._authBloc.add(LoadAuthEvent());
  }
}
