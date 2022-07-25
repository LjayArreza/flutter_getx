import 'package:flutter_getx/repository/user.repository.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  final UserRepository userRepo;
  LandingController(this.userRepo);
}
