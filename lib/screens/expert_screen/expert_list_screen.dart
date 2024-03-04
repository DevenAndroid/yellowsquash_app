import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowsquash_app/screens/expert_screen/expert_details_screen.dart';
import 'package:yellowsquash_app/widgets/apptheme.dart';
import 'package:yellowsquash_app/widgets/back_app_bar.dart';
import '../../widgets/common_text_field.dart';

class ExpertListScreen extends StatefulWidget {
  const ExpertListScreen({super.key});
  static String expertListScreen = "/expertListScreen";
  @override
  State<ExpertListScreen> createState() => _ExpertListScreenState();
}

class _ExpertListScreenState extends State<ExpertListScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: backAppBar(title: "Meet The Expert", context: context),
      body: Theme(
        data: ThemeData(useMaterial3: true),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                const Text(
                  "Rrow itself, let it be sorrow let him love it let him pursue it, ishing for its acquisitiendum. Because he will a hold uniess but through concer, and also of those who resist. Now a pure snore disturbeded",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                ),
                const SizedBox(height: 15),
                category(),
                blogList(),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffF2F2F2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Upcoming Workshops",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                        ),
                        const SizedBox(height: 10),
                        upComingWebinar(size)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Let The Data Speak",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.headlineColor,
                        ),
                      ),
                    ),
                    Wrap(
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * .4,
                            height: size.height * .2,
                            decoration: BoxDecoration(
                              color: AppTheme.backgroundcolor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppTheme.greycolor),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(5, 5),
                                  color: Colors.grey.shade300,
                                  spreadRadius: .5,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(size.width * .05,),
                              child: Column(
                                children: [
                                  Container(
                                    width: size.width * .25,
                                    height: size.height * .1,
                                    decoration: BoxDecoration(
                                      color: index == 0 ? AppTheme.blackcolor :index == 1 ? const Color(0xffF9D121) : index == 2 ? AppTheme.primaryColor : Colors.grey.shade600,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child:const Center(
                                      child: Text(
                                        "70%",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                          color: AppTheme.backgroundcolor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: size.height * .01),
                                  const Text(
                                    "CUSTOMERS COMPLETELY CURED",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.headlineColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: size.height * .03),
                    const Text(
                      "Hear from our Customers",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.headlineColor,
                      ),
                    ),
                    SizedBox(height: size.height * .07),
                    Stack(
                      clipBehavior: Clip.none, alignment: Alignment.center,
                      children: [
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: AppTheme.backgroundcolor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppTheme.greycolor),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(5, 5),
                                color: Colors.grey.shade300,
                                spreadRadius: .5,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: size.height * 0.05,bottom: size.height * 0.04,left: size.height * 0.02,right: size.height * 0.02),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Father of a 2.5-year-old boy with Autism Spectrum Disorder (ASD) shared uplifting testimonials about his child's progress. He noted improvements in bowel movements, a considerable decrease in hand flapping, and a significant reduction in hyperactivity.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff434343),
                                      fontStyle: FontStyle.italic,
                                      height: 2
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Ramchandra Rao",style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.primaryColor,
                                    fontStyle: FontStyle.italic,
                                    height: 2
                                ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Father of ASD child",style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff434343),
                                    fontStyle: FontStyle.italic,
                                    height: 2
                                ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -size.height * 0.04, // Move the container up by half its height
                          child: Container(
                            width: size.height * 0.1,
                            height: size.height * 0.1,
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
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * .02),
                    const Text(
                      "Subscribe Our Newsletter",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.headlineColor,
                      ),
                    ),
                    SizedBox(height: size.height * .01),
                    const Text(
                      "Integer venenatis consequat elit. Curabitur eget laoreet nibh. Cras euismod, tellus vitae luctus ultricies, lacus erat sagittis nulla, id ornare velit ligula congue ex. Etiam rhoncus urna ut pulvinar euismod.", style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff595959),
                    ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: size.height * .01),
                    const RegisterTextFieldWidget(
                      hint: "Enter your email address...",
                    ),
                    SizedBox(height: size.height * .02),
                    Container(
                      alignment: Alignment.center,
                      height: size.height * .05,
                      width: size.width * .40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            foregroundColor: const Color(0xffFFE575),
                            backgroundColor: const Color(0xffF9D121),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        child: const Center(
                            child: Row(
                              children: [
                                Text("Subscribe",
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor)),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: AppTheme.blackcolor,
                                  size: 20,
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffF2F2F2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Subscribe Our Newsletter",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Integer venenatis consequat elit. Curabitur eget laoreet nibh. Cras euismod, tellus vitae luctus ultricies, lacus erat sagittis nulla, id ornare velit ligula congue ex. Etiam rhoncus urna ut pulvinar euismod.",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        const RegisterTextFieldWidget(
                          hint: "Enter your email address...",
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: size.height * .05,
                            width: size.width * .40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: const Color(0xffFFE575),
                                  backgroundColor: const Color(0xffF9D121),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                              child: const Center(
                                  child: Row(
                                children: [
                                  Text("Subscribe",
                                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor)),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: AppTheme.blackcolor,
                                    size: 20,
                                  )
                                ],
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget blogList() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(ExpertDetailsScreen.expertDetailsScreen);
          },
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), border: Border.all(color: AppTheme.primaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  const Text(
                      "Dr Ashwani’s dream to make a difference in healthcare made him move from clinical practice to he...",
                      maxLines: 3,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor)),
                  const SizedBox(height: 10),
                  const Text(
                    "By Dr. Praveen Dhole |  Jan 30, 2024",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Dr Ashwani’s dream to make a difference in healthcare made him move from clinical practice to he...",
                    maxLines: 3,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget upComingWebinar(size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Centered the column items
      children: [
        Container(
          width: size.width,
          height: size.height * 0.20, // Added width to the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
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
        SizedBox(height: size.height * 0.01),
        SizedBox(
          width: size.width,
          height: size.height * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                  )),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Functional Medicine",
                maxLines: 2,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade500),
              ),
              SizedBox(height: size.height * 0.01),
              const Text(
                "By : Dr. Gaurang Ram",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
              ),
            ],
          ),
        )
      ],
    );
  }
  Widget category(){
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            padding: EdgeInsets.zero,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  margin: const EdgeInsets.all(4),
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(color: AppTheme.greenColor)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Center(child: Text('ADHD')),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        )
      ]),
    );
  }
}
