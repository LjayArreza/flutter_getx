import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/core/common/constants.dart';
import 'package:flutter_getx/core/common/reusable_components/custom_reusable_appbar.dart';
import 'package:flutter_getx/core/common/reusable_components/custom_reusable_text.dart';
import 'package:flutter_getx/pages/register/widgets/registration_textFields.widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomReusableAppbar(
          appbarTitle: CustomReusableText(
            text: 'REGISTER',
            textStyleColor: Colors.black,
            textStyleFontWeight: FontWeight.bold,
            textStyleFontSize: 16,
          ),
          isTitleCenter: true,
          leadingIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actionIcon: [
            TextButton(
              onPressed: () {},
              child: CustomReusableText(
                text: 'SUBMIT',
                textStyleColor: kSolidButtonColor,
                textStyleFontWeight: FontWeight.bold,
                textStyleFontSize: 14,
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                RegistrationTextFields(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
