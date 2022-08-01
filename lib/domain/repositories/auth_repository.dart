import 'package:flutter_getx/domain/entities/login.dart';
import 'package:flutter_getx/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
}
