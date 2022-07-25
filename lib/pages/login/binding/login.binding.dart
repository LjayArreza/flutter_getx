import 'package:flutter_getx/pages/login/controller/login.controller.dart';
import 'package:flutter_getx/repository/user.repository.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(UserRepository()),
    );
  }
}
