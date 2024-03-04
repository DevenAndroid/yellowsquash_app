import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yellowsquash_app/resource/app_Assets.dart';
import 'package:yellowsquash_app/widgets/back_app_bar.dart';
import 'package:yellowsquash_app/widgets/common_text_field.dart';

import '../widgets/apptheme.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});
  static String aboutUsScreen = "/aboutUsScreen";
  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: backAppBar(title: "About Us", context: context),
      body: Theme(
         data: ThemeData(
           useMaterial3: true
         ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * .01, horizontal: size.width * .03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Everything you can do in aphysical do with Yellow Squash",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.headlineColor,
                  ),
                ),
                SizedBox(height: size.height * .01),
                const Text(
                  "Is your child facing the challenges of Autism, ADHD, or other developmental disorders? The essential diagnostic criteria for Autism Spectrum Disorder (ASD) encompass repetitive patterns of behavior, interests, or activities, along with deficits in social interaction and language. Perhaps, you have tried therapy, Ayurveda, and whatnot to see improvement in your child.While early intensive behavioral therapy is recommended and can be beneficial, but many times there is much more that we can do!The primary hurdle confronting all parents is determining the most effective way to support their child.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff595959),
                  ),
                ),
                SizedBox(height: size.height * .01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppTheme.primaryColor),
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: AppTheme.backgroundcolor,
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * .03),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Online Video",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                            Text(
                              "with Unlimited Webinars",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppTheme.blackcolor)),
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: ImageIcon(
                              AssetImage(AppAssets.ourExpert),
                              color: AppTheme.blackcolor,
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * .03),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Our Experts",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.blackcolor,
                              ),
                            ),
                            Text(
                              "with Unlimited Webinars",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppTheme.blackcolor,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: size.height * .01),
                const Text(
                  "We have a compelling offering for the Experts",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff595959),
                  ),
                ),
                SizedBox(height: size.height * .01),
                const Row(
                  children: [
                    Text(
                      "Get in touch with us at",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff595959),
                      ),
                    ),
                    Text(
                      " info@yellowsquash.in.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * .02),
                Container(
                  height: size.height * .05,
                  width: size.width * .48,
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
                        Text("More Programs",
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
                SizedBox(height: size.height * .03),
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
                SizedBox(height: size.height * .01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
