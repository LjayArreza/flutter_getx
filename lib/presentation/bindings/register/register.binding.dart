import 'package:flutter_getx/presentation/controllers/register/register.controller.dart';
import 'package:flutter_getx/domain/repositories/user.repository.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController(UserRepository()));
  }
}
