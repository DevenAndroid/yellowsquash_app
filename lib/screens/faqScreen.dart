import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  CarouselController carouselController = CarouselController();

  final featuredImages = [
    'assets/images/doctor.jpeg',
    'assets/images/doctor.png',
    'assets/images/doctor.jpeg'
  ];
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Text(
                    'Instructor Questions',
                    style: GoogleFonts.oswald(fontSize: 30, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Vivamus varius, mi vitae tincidunt faucibus, nunc risus fermentum diam, vitae luctus dui dui in lorem. Duis condimentum neque eu faucibus ultricies. Mauris hendrerit quis mauris.',
                    style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Get.width,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'industries for previewing layouts',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'learn everything there know about ubiquitous',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.all(10),
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
                      children: [
                        Text(
                          'Nonsensical Latin derived from Cicero',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himen aeos. Nam volutpat erat non quam congue, in bibendum metus condimentum. Maecenas euismod molestie nisi ut porta.',
                          style:
                              GoogleFonts.poppins(fontSize: 10, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: Get.width,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Creation timelines for the standard',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'making Lettersets transfer sheets placeholder',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/images/faq.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Workshop Questions',
                    style: GoogleFonts.oswald(fontSize: 30, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Vivamus varius, mi vitae tincidunt faucibus, nunc risus fermentum diam, vitae luctus dui dui in lorem. Duis condimentum neque eu faucibus ultricies. Mauris hendrerit quis mauris.',
                    style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Get.width,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'industries for previewing layouts',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'learn everything there know about ubiquitous',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.all(10),
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
                      children: [
                        Text(
                          'Nonsensical Latin derived from Cicero',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himen aeos. Nam volutpat erat non quam congue, in bibendum metus condimentum. Maecenas euismod molestie nisi ut porta.',
                          style:
                              GoogleFonts.poppins(fontSize: 10, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: Get.width,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Creation timelines for the standard',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffF9D121)),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'making Lettersets transfer sheets placeholder',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffF9D121),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/images/getintouch.png'),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(
                      0.2,
                      0.2,
                    ),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Upcoming  Workshops Events',
                    style: GoogleFonts.oswald(fontSize: 28, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (index, context) {
                        return Container(
                          width: Get.width,
                          height: 80,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: const Color(0xffF9D121)),
                              borderRadius: BorderRadius.circular(7)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '05th Dec, 2022 09:00pm',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: AppTheme.greenColor, fontWeight: FontWeight.w400),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'A learning community where people knowledge',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xffF9D121),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                  CommonButtonBlue(
                    onPressed: () {
                      Get.to(const FaqScreen());
                    },
                    title: 'Connect With Us',
                    margin: const EdgeInsets.only(left: 70, right: 70),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Our Experts',
              style: GoogleFonts.oswald(fontSize: 30, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
            ),
      Padding(
        padding: const EdgeInsets.only(
          top: 85,
        ),
        child: Container(
          width: 450,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Stack(
            children: [
              CarouselSlider(
                carouselController: carouselController, // Give the controller
                options: CarouselOptions(
                  autoPlay: true,
                ),
                items: featuredImages.map((featuredImage) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Image.asset(featuredImage),
                  );
                }).toList(),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    carouselController.previousPage();
                  },
                  icon: const CircleAvatar(
                      backgroundColor: Colors.black,
                      maxRadius: 15,
                      minRadius: 15,
                      child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,))),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    carouselController.nextPage();
                  },
                  icon: const CircleAvatar(
                    backgroundColor: Colors.black,
                      maxRadius: 15,
                      minRadius: 15,
                      child: Center(child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15))),
                ),
              ),
            ],
          ),
        ),
      ),
            const SizedBox(height: 40,),
            Text(
              'Subscribe Our Newsletter',
              style: GoogleFonts.oswald(
                  fontSize: 30, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text(
                'Integer venenatis consequat elit. Curabitur eget laoreet nibh. Cras euismod, tellus vitae luctus ultricies, lacus erat sagittis nulla, id ornare velit ligula congue ex. Etiam rhoncus urna ut pulvinar euismod.',
                style: GoogleFonts.poppins(
                    fontSize: 16, color: const Color(0xff434343), fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 20,),
      Container(
        width: Get.width,
        height: 50,
        margin: const EdgeInsets.only(left: 20,right: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(
                  0.2,
                  0.2,
                ),
                blurRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.circular(30)),
     child:  TextFormField(
        style: const TextStyle(color: Color(0xFF384953)),
        decoration: InputDecoration(
            hintText: 'Enter your email address...',
            focusColor: const Color(0xFF384953),
            hintStyle: GoogleFonts.poppins(
              color: const Color(0xFF595959),
              textStyle: GoogleFonts.poppins(
                color: const Color(0xFF384953),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
              fontSize: 14,
              // fontFamily: 'poppins',
              fontWeight: FontWeight.w300,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            // .copyWith(top: maxLines! > 4 ? AddSize.size18 : 0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(6.0),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 3.0),
                borderRadius: BorderRadius.circular(6.0)),
           ),
      )
      ),
            const SizedBox(height: 20,),
            const CommonButtonBlue(title: 'Subscribe',margin: EdgeInsets.only(left: 100,right: 100),),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
