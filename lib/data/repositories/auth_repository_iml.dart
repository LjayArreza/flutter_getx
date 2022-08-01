import 'package:flutter_getx/domain/entities/user.dart';
import 'package:flutter_getx/domain/repositories/auth_repository.dart';

class AutoRepositoryIml extends AuthRepository {
  @override
  Future<User> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    return User(email: email, password: password);
  }
}
