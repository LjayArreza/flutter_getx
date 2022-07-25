import 'package:flutter_getx/pages/register/controller/register.controller.dart';
import 'package:flutter_getx/repository/user.repository.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController(UserRepository()));
  }
}
