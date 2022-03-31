import 'package:humanrights/auth/index.dart';

class AuthRepository {
  final AuthProvider _authProvider = AuthProvider();

  AuthRepository();

  void test(bool isError) {
    _authProvider.test(isError);
  }
}