import 'package:flutter/material.dart';
import 'package:flutter_getx/core/routes/app_pages.dart';
import 'package:get/route_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      defaultTransition: Transition.fade,
      initialRoute: Routes.LANDING,
      getPages: AppPages.pages,
    );
  }
}
