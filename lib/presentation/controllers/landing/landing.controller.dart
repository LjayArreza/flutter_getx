import 'package:flutter_getx/domain/repositories/user.repository.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  final UserRepository userRepo;
  LandingController(this.userRepo);
}
