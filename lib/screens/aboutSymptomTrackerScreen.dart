import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';

class AboutSymptomTrackerScreen extends StatefulWidget {
  const AboutSymptomTrackerScreen({super.key});

  @override
  State<AboutSymptomTrackerScreen> createState() => _AboutSymptomTrackerScreenState();
}

class _AboutSymptomTrackerScreenState extends State<AboutSymptomTrackerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'About Symptom Tracker',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Text(
                'What is symptom tracker?',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.grayColor),
              ),
              const SizedBox(height: 20,),
              Text(
                'Dignissim orci vulputate varius sapien. Sed sed dui scelerisque massa tristique purus, egestas congue. Dignissim non feugiat bibendum suspendisse. Dolor consequat senectus turpis dui. Diam morbi faucibus sit massa. ',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
              ),
              const SizedBox(height: 20,),
              Text(
                'How to use the symptom tracker?',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.grayColor),
              ),
              const SizedBox(height: 20,),
              Text(
                'Massa rhoncus sit magna morbi ut in ultrices. Eu pretium eget dignissim proin proin a turpis pellentesque ultrices. Id aliquet commodo massa pretium mattis pellentesque. Id integer eget metus cursus quam gravida congue in neque. Risus in turpis amet, dolor amet sollicitudin. Id.',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
