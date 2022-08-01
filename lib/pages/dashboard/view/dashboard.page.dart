import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/app/core/routes/app_pages.dart';
import 'package:flutter_getx/presentation/controllers/dashboard/dashboard.controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 200),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Text(
                'Welcome to dashboard',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black)),
              ),
              Text(
                controller.token.value,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  controller.logout();
                },
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
