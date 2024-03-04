import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';
import 'faqScreen.dart';

class ContactUSScreen extends StatefulWidget {
  const ContactUSScreen({super.key});

  @override
  State<ContactUSScreen> createState() => _ContactUSScreenState();
}

class _ContactUSScreenState extends State<ContactUSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,size: 20,)),
        title: Image.asset(
          'assets/images/logo.png',
          width: 120,
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black,
            minRadius: 15,
            maxRadius: 15,
            child: Image.network(
                'https://www.embark.ca/wp-content/uploads/2023/12/How-to-become-a-doctor-1300x1065-1.png'),
          ),
          const SizedBox(
            width: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/call.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'We are Here To Provide 24X7 Support',
                      style: GoogleFonts.poppins(fontSize: 28, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Suspendisse ac mauris interdum, luctus lectus eget, condimentum arcu. Pellentesque laoreet congue accumsan. Praesent feugiat vitae lacus sit amet condimentum. Morbi quis odio ut lectus pretium mollis at sed lectus. Pellen tesque libero magna, lacinia non massa at, tincidunt ultricies dolor.',
                style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
              ),
              Container(
                width: Get.width,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(
                          0.2,
                          0.2,
                        ),
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(11)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://www.embark.ca/wp-content/uploads/2023/12/How-to-become-a-doctor-1300x1065-1.png',
                      width: 150,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const RegisterTextFieldWidget(
                      hint: 'Full name',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const RegisterTextFieldWidget(
                      hint: 'Email id',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const RegisterTextFieldWidget(
                      hint: 'Phone number',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const RegisterTextFieldWidget(
                      hint: 'Message',
                      maxLines: 7,
                      minLines: 7,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CommonButtonBlue(
                      title: 'Send Message',
                      margin: EdgeInsets.only(right: 120),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
            width: Get.width,
            height: 50,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xffF9D121)),
                borderRadius: BorderRadius.circular(11)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Frequently Asked Questions',
                  style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                ),
                const Icon(Icons.arrow_forward,color: Color(0xffF9D121),)
              ],
            ),
          ),
              Container(
                width: Get.width,
                height: 50,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xffF9D121)),
                    borderRadius: BorderRadius.circular(11)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Programs',
                      style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                    ),
                    const Icon(Icons.arrow_forward,color: Color(0xffF9D121),)
                  ],
                ),
              ),
              Container(
                width: Get.width,
                height: 50,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xffF9D121)),
                    borderRadius: BorderRadius.circular(11)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Online Webinars',
                      style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                    ),
                    const Icon(Icons.arrow_forward,color: Color(0xffF9D121),)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.navigation_rounded,color: Color(0xffF9D121),),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Platina Heights C-24, C Block, Phase 2, Industrial Area, Sector 62, Noida, Uttar Pradesh 201301',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: const Color(0xff595959), fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.email,color: Color(0xffF9D121),),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'info@yellowsquash.in',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: const Color(0xff595959), fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.phone,color: Color(0xffF9D121),),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '+91 97173 33655',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: const Color(0xff595959), fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Text(
                'Let’s find the right Program for you!',
                style: GoogleFonts.oswald(
                    fontSize: 28, color: AppTheme.blackcolor, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10,),
              Text(
                'In hac habitasse platea dictumst. Ut porta, dolor ut aliquam congue, dui nunc varius nisl, a blandit ex libero eget lectus. Aliquam lacinia et dui eget aliquam.',
                style: GoogleFonts.poppins(
                    fontSize: 14, color: const Color(0xff595959), fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20,),
              CommonButtonBlue(
                onPressed: (){
                Get.to(const FaqScreen());
                },
                title: 'Connect With Us',margin: const EdgeInsets.only(left: 70,right: 70),),
              const SizedBox(height: 40,),
              Image.asset('assets/images/contactgirl.png'),
              const SizedBox(height: 20,),
              
            ],
          ),
        ),
      ),
    );
  }
}
