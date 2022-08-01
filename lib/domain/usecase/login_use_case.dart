import 'package:flutter_getx/app/core/use_cases/param_usecase.dart';
import 'package:flutter_getx/domain/entities/user.dart';
import 'package:flutter_getx/domain/repositories/auth_repository.dart';
import 'package:tuple/tuple.dart';

class LoginUseCase extends ParamUseCase<User, Tuple2<String, String>> {
  final AuthRepository _repo;
  LoginUseCase(this._repo);

  @override
  Future<User> execute(Tuple2 params) {
    return _repo.login(params.item1, params.item2);
  }
}
