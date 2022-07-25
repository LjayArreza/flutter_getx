import 'package:flutter_getx/pages/dashboard/controller/dashboard.controller.dart';
import 'package:flutter_getx/repository/user.repository.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(UserRepository()),
    );
  }
}
