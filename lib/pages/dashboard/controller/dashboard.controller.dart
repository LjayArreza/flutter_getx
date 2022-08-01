import 'package:flutter_getx/app/core/routes/app_pages.dart';
import 'package:flutter_getx/domain/repositories/user.repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardController extends GetxController {
  RxString token = ''.obs;

  @override
  void onInit() {
    _asyncMethod();
    super.onInit();
  }

  _asyncMethod() async {
    await getToken();
  }

  final UserRepository userRepo;
  DashboardController(this.userRepo);

  Future<void> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String _token = pref.getString('token')!;
    token.value = _token;
  }

  Future<void> logout() async {
    Get.offAllNamed(Routes.LOGIN);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
