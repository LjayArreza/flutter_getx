import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/pages/landing/widgets/landing_buttons.widget.dart';
import 'package:flutter_getx/pages/landing/widgets/landing_header.widget.dart';
import 'package:flutter_getx/pages/landing/widgets/landing_login_via.widget.dart';
import 'package:flutter_getx/presentation/controllers/landing/landing.controller.dart';
import 'package:get/get.dart';

class LandingPage extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 150),
          LandingHeader(),
          SizedBox(height: 100),
          LandingLoginButton(),
          SizedBox(height: 50),
          LandingLoginVia()
        ],
      ),
    );
  }
}
