import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';

class BookConsultationFirstScreen extends StatefulWidget {
  const BookConsultationFirstScreen({super.key});

  @override
  State<BookConsultationFirstScreen> createState() => _BookConsultationFirstScreenState();
}

class _BookConsultationFirstScreenState extends State<BookConsultationFirstScreen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Date',
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
              ),
              const SizedBox(height: 5,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: AppTheme.grayColor)
                ),
                child:  const Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(
                      Icons.calendar_month,
                      color: AppTheme.greenColor,
                      size: 18,
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text(
                        '14 Jan 2022, Fri',
                        style: TextStyle(fontSize: 12, color: AppTheme.grayColor,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                'Select Time Slot',
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
              ),
              const SizedBox(height: 20,),
              GridView.builder(
                itemCount: 14,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                    mainAxisExtent: 50
              ), itemBuilder: (index,context){
                   return Container(
                     margin: const EdgeInsets.only(right: 10,bottom: 10),
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey,width: 1),borderRadius: BorderRadius.circular(6)
                     ),
                     child: Center(child: Text('7 AM')),
                   );
              })
            ],
          ),
        ),
      ),
    );
  }
}
