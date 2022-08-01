import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_getx/app/core/routes/app_pages.dart';
import 'package:flutter_getx/data/provider/network/everonment/environment.dart';
import 'package:get/route_manager.dart';

Future<void> main() async {
  await dotenv.load(fileName: Environment.mode);
  runApp(MyApp());
}

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
