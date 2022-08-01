import 'package:flutter_getx/presentation/controllers/dashboard/dashboard.controller.dart';
import 'package:flutter_getx/domain/repositories/user.repository.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(UserRepository()),
    );
  }
}
