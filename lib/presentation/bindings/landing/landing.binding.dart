import 'package:flutter_getx/domain/repositories/user.repository.dart';
import 'package:flutter_getx/presentation/controllers/landing/landing.controller.dart';
import 'package:get/get.dart';

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(
      () => LandingController(UserRepository()),
    );
  }
}
