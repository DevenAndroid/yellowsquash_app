import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yellowsquash_app/resource/app_Assets.dart';
import 'package:yellowsquash_app/widgets/apptheme.dart';

class ProgramScreenDetails extends StatefulWidget {
  const ProgramScreenDetails({super.key});
  static String programDetailsScreen = "/programDetailsScreen";
  @override
  State<ProgramScreenDetails> createState() => _ProgramScreenDetailsState();
}

class _ProgramScreenDetailsState extends State<ProgramScreenDetails> {
  final faqController = TextEditingController();
  List<bool> boolList = [true, false, false, false, false, false, false, false, false, false];
  String? plan;
  List<String> planList = ["Plan1", "Plan2", "Plan3"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.25, // Added width to the container
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                      fit: BoxFit.cover,
                      errorWidget: (_, __, ___) => const Icon(
                        Icons.category,
                        color: Color(0xff22C55E),
                      ),
                      placeholder: (_, __) => const SizedBox(),
                    ),
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: AppTheme.backgroundcolor,
                      ),
                    )),
                const Positioned(
                    top: 40,
                    right: 10,
                    child: Icon(
                      Icons.notifications_none,
                      color: AppTheme.backgroundcolor,
                    ))
              ],
            ),
            SizedBox(height: size.height * .01),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * .01, horizontal: size.width * .03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          "Autism | GDD | ADHD | Learning Disorders",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff22C55E),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 4,
                            itemCount: 5,
                            itemSize: 12.0,
                            unratedColor: Colors.grey,
                            physics: const BouncingScrollPhysics(),
                            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Image.asset(
                              AppAssets.rating,
                              color: AppTheme.topstar,
                            ),
                          ),
                          const Text(
                            " 4.9 Reviews",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff595959),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .01),
                  const Text(
                    "Functional Medicine Program for Autism and Developmental Disorders",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.headlineColor,
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Color(0xff22C55E),
                            size: 15,
                          ),
                          Text(
                            "2600 + Enrolled",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff22C55E),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            color: Color(0xff22C55E),
                            size: 15,
                          ),
                          Text(
                            "March 11, 2024",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff22C55E),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phonelink_lock_rounded,
                            color: Color(0xff22C55E),
                            size: 15,
                          ),
                          Text(
                            "11 Sessions",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff22C55E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: size.height * .04,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppTheme.primaryColor), borderRadius: BorderRadius.circular(6)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: const Text(
                                "Select Plan",
                                style: TextStyle(color: Colors.grey,fontSize: 13),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: size.height * .005),
                              icon: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,size: 20,),
                              value: plan,
                              isExpanded: true,
                              onChanged: (newValue) {
                                setState(() {
                                  plan = newValue;
                                });
                              },
                              items: planList.map((model) {
                                return DropdownMenuItem<String>(
                                  value: model,
                                  child: Text(
                                    model,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * .01),
                      Container(
                        height: size.height * .04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xff22C55E),
                              backgroundColor: const Color(0xff22C55E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              )),
                          child: const Center(
                              child: Text("Subscribe Now",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white))),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Theme(
                data: ThemeData(useMaterial3: true),
                child: Column(
                  children: [
                    const TabBar(
                      unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      labelColor: Colors.greenAccent,
                      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      indicatorColor: Color(0xff22C55E),
                      tabs: [
                        Tab(text: 'Overview'),
                        Tab(text: 'Session'),
                        Tab(text: 'Review'),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 400, // Adjust height as per your requirement
                      child: TabBarView(
                        children: [
                          overView(size),
                          session(size),
                          review(size),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget overView(size) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Program Starts March 11, 2024 (Mon) - 7:00 PM sessions",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff595959),
              ),
            ),
            SizedBox(height: size.height * .01),
            const Text(
              "Start Your Child's Journey Toward Treating Developmental Disorders With A Whole-Body Approach",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
            ),
            SizedBox(height: size.height * .01),
            const Text(
              "Is your child facing the challenges of Autism, ADHD, or other developmental disorders? The essential diagnostic criteria for Autism Spectrum Disorder (ASD) encompass repetitive patterns of behavior, interests, or activities, along with deficits in social interaction and language. Perhaps, you have tried therapy, Ayurveda, and whatnot to see improvement in your child.While early intensive behavioral therapy is recommended and can be beneficial, but many times there is much more that we can do!The primary hurdle confronting all parents is determining the most effective way to support their child.",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff939393),
              ),
            ),
            SizedBox(height: size.height * .01),
            Container(
              width: size.width,
              height: size.height * 0.30, // Added width to the container
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: ClipRRect(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                  fit: BoxFit.cover,
                  errorWidget: (_, __, ___) => const Icon(
                    Icons.category,
                    color: Color(0xff22C55E),
                  ),
                  placeholder: (_, __) => const SizedBox(),
                ),
              ),
            ),
            SizedBox(height: size.height * .02),
            const Text(
              "Why Functional Medicine Approach for the Developmental Disorders?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
            ),
            SizedBox(height: size.height * .01),
            const Text(
              "Functional medicine aligns well with addressing disorders like autism, given the diverse spectrum of severities and causes observed in affected children. Recognizing the unique nature of each child and the varied triggers contributing to imbalances in their bodies, functional medicine seeks to identify these triggers and address them individually.",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff939393),
              ),
            ),
            SizedBox(height: size.height * .02),
            const Text(
              "Our Journey Together",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
            ),
            SizedBox(height: size.height * .01),
            Container(
              width: size.width,
              height: size.height * 0.30, // Added width to the container
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: ClipRRect(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                  fit: BoxFit.cover,
                  errorWidget: (_, __, ___) => const Icon(
                    Icons.category,
                    color: Color(0xff22C55E),
                  ),
                  placeholder: (_, __) => const SizedBox(),
                ),
              ),
            ),
            SizedBox(height: size.height * .01),
            const Text(
              "In order to uncover the underlying causes, we require the following information from you:",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff939393),
              ),
            ),
            SizedBox(height: size.height * .02),
            Column(
              children: List.generate(2, (index) {
                return Row(
                  children: [
                    Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff939393),
                        )),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        "In order to uncover the underlying causes, we require the following information from you:",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff939393),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: size.height * .02),
            const Text(
              "Getting to the Root Cause of Digestive Disorders",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
            ),
            SizedBox(height: size.height * .01),
            const Text(
              "Functional medicine aligns well with addressing disorders like autism, given the diverse spectrum of severities and causes observed in affected children. Recognizing the unique nature of each child and the varied triggers contributing to imbalances in their bodies, functional medicine seeks to identify these triggers and address them individually.",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff939393),
              ),
            ),
            SizedBox(height: size.height * .02),
            const Text(
              "Conclusion",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
            ),
            SizedBox(height: size.height * .01),
            const Text(
              "Functional medicine aligns well with addressing disorders like autism, given the diverse spectrum of severities and causes observed in affected children. Recognizing the unique nature of each child and the varied triggers contributing to imbalances in their bodies, functional medicine seeks to identify these triggers and address them individually.",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff939393),
              ),
            ),
            share(size)
          ],
        ),
      ),
    );
  }

  Widget programs(size) {
    return SizedBox(
      height: size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0), // Added padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Centered the column items
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(ProgramScreenDetails.programDetailsScreen);
                        },
                        child: Container(
                          width: size.width * 0.5,
                          height: size.height * 0.15, // Added width to the container
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(5, 5),
                                color: Colors.grey.shade300,
                                spreadRadius: .5,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                              fit: BoxFit.cover,
                              errorWidget: (_, __, ___) => const Icon(
                                Icons.category,
                                color: Color(0xff22C55E),
                              ),
                              placeholder: (_, __) => const SizedBox(),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.amber),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                              child: Center(
                                  child: Text(
                                "By Dr Ashwani Garg",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.003),
                SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Functional Medicine Program for Autism & Developmental...",
                        maxLines: 2,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                      ),
                      SizedBox(height: size.height * 0.003),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.date_range,
                            color: Color(0xff22C55E),
                            size: 16,
                          ),
                          Expanded(
                            child: Text(
                              " Feb 28, 2024 | 07:30 - 09:30(IST)",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff22C55E)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget share(size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * .02),
        const Text(
          "Share",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
        ),
        SizedBox(height: size.height * .01),
        Row(
          children: [
            const ImageIcon(
              AssetImage(AppAssets.facebook),
              color: Color(0xff939393),
              size: 30,
            ),
            SizedBox(width: size.width * .02),
            const ImageIcon(
              AssetImage(AppAssets.whatsapp),
              color: Color(0xff939393),
              size: 30,
            ),
            SizedBox(width: size.width * .02),
            const ImageIcon(
              AssetImage(AppAssets.twitter),
              color: Color(0xff939393),
              size: 30,
            ),
            SizedBox(width: size.width * .02),
            const ImageIcon(
              AssetImage(AppAssets.linkedin),
              color: Color(0xff939393),
              size: 30,
            ),
          ],
        ),
        SizedBox(height: size.height * .02),
        const Text(
          "Also interested in",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
        ),
        SizedBox(height: size.height * .01),
        programs(size),
        const Text(
          "FAQ",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
        ),
        SizedBox(height: size.height * .01),
        TextFormField(
          controller: faqController,
          decoration: InputDecoration(
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
              suffixIcon: const Icon(Icons.add, color: AppTheme.primaryColor)),
        ),
        SizedBox(height: size.height * .02),
        Container(
          height: size.height * .05,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xff22C55E),
                backgroundColor: const Color(0xff22C55E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                )),
            child: const Center(
                child: Text("Subscribe Now", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white))),
          ),
        )
      ],
    );
  }

  Widget session(size) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Program Starts March 11, 2024 (Mon) - 7:00 PM sessions",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff595959),
              ),
            ),
            SizedBox(height: size.height * .01),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * .004),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppTheme.backgroundcolor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppTheme.primaryColor)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Session ${index + 1}  |  Duration 60 mins",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff595959),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    boolList[index] = !boolList[index];
                                    setState(() {});
                                  },
                                  child: const Icon(Icons.keyboard_arrow_down_rounded))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * .01),
                      if (boolList[index] == true)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppTheme.backgroundcolor,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(5, 5),
                                color: Colors.grey.shade300,
                                spreadRadius: .2,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                            child: const Text(
                              "Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff595959),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
            share(size)
          ],
        ),
      ),
    );
  }

  Widget review(size) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Program Starts March 11, 2024 (Mon) - 7:00 PM sessions",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff595959),
              ),
            ),
            SizedBox(height: size.height * .01),
            Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Review(4)",
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: const Color(0xFF1E2538)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Overall Rating",
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: const Color(0xFF969AA3)),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                  child: Column(children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                      const Text(
                        '4.8',
                        style: TextStyle(
                          color: Color(0xFF1B233A),
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          unratedColor: const Color(0xFF698EDE).withOpacity(.2),
                          itemCount: 5,
                          itemSize: 16.0,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                          updateOnDrag: true,
                          itemBuilder: (context, index) => Image.asset(
                            AppAssets.rating,
                            color: AppTheme.topstar,
                          ),
                          onRatingUpdate: (ratingvalue) {},
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            'basad on 23 reviews',
                            style: TextStyle(
                              color: Color(0xFF969AA3),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ]),
                    ]),
                  ])),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Excellent',
                        style: TextStyle(
                          color: Color(0xFF969AA3),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LinearPercentIndicator(
                        lineHeight: 6.0,
                        barRadius: const Radius.circular(16),
                        backgroundColor: const Color(0xFFE6F9ED),
                        animation: true,
                        progressColor: const Color(0xFF5DAF5E),
                        percent: 0.9,
                        animationDuration: 1200,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Expanded(
                      child: Text(
                        'Good',
                        style: TextStyle(
                          color: Color(0xFF969AA3),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LinearPercentIndicator(
                        lineHeight: 6.0,
                        barRadius: const Radius.circular(16),
                        backgroundColor: const Color(0xFFF2FFCF),
                        animation: true,
                        progressColor: const Color(0xFFA4D131),
                        percent: 0.7,
                        animationDuration: 1200,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Average',
                        style: TextStyle(
                          color: Color(0xFF969AA3),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LinearPercentIndicator(
                        lineHeight: 6.0,
                        barRadius: const Radius.circular(16),
                        backgroundColor: const Color(0xFFF5FFDB),
                        animation: true,
                        progressColor: const Color(0xFFF7E742),
                        percent: 0.6,
                        animationDuration: 1200,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Below Average',
                        style: TextStyle(
                          color: Color(0xFF969AA3),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LinearPercentIndicator(
                        lineHeight: 6.0,
                        barRadius: const Radius.circular(16),
                        backgroundColor: const Color(0xFFFFF5E5),
                        animation: true,
                        progressColor: const Color(0xFFF8B859),
                        percent: 0.5,
                        animationDuration: 1200,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Poor',
                        style: TextStyle(
                          color: Color(0xFF969AA3),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LinearPercentIndicator(
                        lineHeight: 6.0,
                        barRadius: const Radius.circular(16),
                        backgroundColor: const Color(0xFFFFE9E4),
                        animation: true,
                        progressColor: const Color(0xFFEE3D1C),
                        percent: 0.3,
                        animationDuration: 1200,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: const Color(0xFF698EDE).withOpacity(.1),
                thickness: 2,
              ),
              const SizedBox(
                height: 8,
              ),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "I have regained sensation in right foot and arm paralyzed afer an attack. Now I feel like it never happened.",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF939393),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: size.height * 0.08,
                              height: size.height * 0.08, // Added width to the container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                  fit: BoxFit.cover,
                                  errorWidget: (_, __, ___) => const Icon(
                                    Icons.category,
                                    color: Color(0xff22C55E),
                                  ),
                                  placeholder: (_, __) => const SizedBox(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "userName",
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF1B233A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.thumb_up_off_alt,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        index != 2
                            ? Divider(
                                color: const Color(0xFF698EDE).withOpacity(.1),
                                thickness: 2,
                              )
                            : const SizedBox(),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    );
                  })
            ]),
            SizedBox(height: size.height * .01),
            share(size)
          ],
        ),
      ),
    );
  }
}
