import 'package:flutter/material.dart';
import 'package:flutter_getx/presentation/bindings/dasboard/dashboard.binding.dart';
import 'package:flutter_getx/pages/dashboard/view/dashboard.page.dart';
import 'package:flutter_getx/presentation/bindings/landing/landing.binding.dart';
import 'package:flutter_getx/pages/landing/view/landing.page.dart';
import 'package:flutter_getx/presentation/bindings/login/login.binding.dart';
import 'package:flutter_getx/pages/login/view/login.page.dart';
import 'package:flutter_getx/presentation/bindings/register/register.binding.dart';
import 'package:flutter_getx/pages/register/view/register.page.dart';
import 'package:flutter_getx/presentation/bindings/register/register.binding.dart';

import 'package:get/route_manager.dart';

part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.LANDING,
      page: () => LandingPage(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}
