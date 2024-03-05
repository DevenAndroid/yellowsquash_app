import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_app/screens/resetPassword/resetPasswordEmail.dart';

import '../widgets/apptheme.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Setting',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(ResetPasswordEmailScreen());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
                child: Text(
                  'Change Password',
                  style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
              child: Text(
                'Deactivate Account',
                style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
              child: Text(
                'Notification Preferences',
                style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
              child: Text(
                'Help Center',
                style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
              child: Text(
                'Logout',
                style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
