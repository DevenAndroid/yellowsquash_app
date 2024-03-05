import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';

class RequestNewTimeScreen extends StatefulWidget {
  const RequestNewTimeScreen({super.key});

  @override
  State<RequestNewTimeScreen> createState() => _RequestNewTimeScreenState();
}

class _RequestNewTimeScreenState extends State<RequestNewTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Book Consultation',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(colors: [
                  Color(0xffFFE575),
                  Color(0xffF9D121),
                ])),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Consultation Booked',
                  style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'Date: ',
                      style:
                          GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16, color: AppTheme.blackcolor)),
                  TextSpan(
                      text: '14 Jan 2022, Fri',
                      style:
                          GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: AppTheme.blackcolor)),
                ])),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'Time: ',
                      style:
                          GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16, color: AppTheme.blackcolor)),
                  TextSpan(
                      text: ' 9:00 AM',
                      style:
                          GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: AppTheme.blackcolor)),
                ])),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: Get.width,
                  margin: const EdgeInsets.only(left: 60, right: 60),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6)),
                  child: Center(
                      child: Text(
                    'Request New Time',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
