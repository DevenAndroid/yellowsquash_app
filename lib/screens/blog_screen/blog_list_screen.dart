import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowsquash_app/widgets/apptheme.dart';
import 'package:yellowsquash_app/widgets/back_app_bar.dart';
import '../../widgets/common_text_field.dart';
import 'blog_details_screen.dart';

class BlogListScreen extends StatefulWidget {
  const BlogListScreen({super.key});
  static String blogsListScreen = "/blogsListScreen";
  @override
  State<BlogListScreen> createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: backAppBar(title: "Our Blogs", context: context),
      body: Theme(
        data: ThemeData(useMaterial3: true),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                blogList(),
                const SizedBox(height: 10),
                const SearchTextFieldWidget(
                  hint: "Search",
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
                          "Tags",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,
                          alignment: WrapAlignment.start,
                          children: List.generate(
                              10,
                              (index) => Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: AppTheme.subTitleColor)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: index % 2 == 1 ? const Text("ADHD") : const Text("Accupressure"),
                                        )),
                                  )),
                        ),
                      ],
                    ),
                  ),
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
                          "Recent Post",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                        ),
                        const SizedBox(height: 10),
                        recentPost(size)
                      ],
                    ),
                  ),
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
                          "Upcoming Webinars",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                        ),
                        const SizedBox(height: 10),
                        upComingWebinar(size)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffF2F2F2)),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Get In Touch",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Integer venenatis consequat elit. Curabitur eget laoreet nibh. Cras euismod, tellus vitae luctus ultricies, lacus erat sagittis nulla, id ornare velit ligula congue ex. Etiam rhoncus urna ut pulvinar euismod.",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppTheme.primaryColor),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(Icons.email_outlined,color: AppTheme.primaryColor,),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "info@yellowsquash.in",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),textAlign: TextAlign.center,),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppTheme.primaryColor),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(Icons.call,color: AppTheme.primaryColor,),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "+91 97173 33655",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),textAlign: TextAlign.center,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffF2F2F2)),
                  child:  Padding(
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
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),textAlign: TextAlign.center,),
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
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            Get.toNamed(BlogDetailsScreen.blogsDetailsScreen);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
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
                    const Text(
                      "By Dr. Praveen Dhole |  Jan 30, 2024",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Fungal Infections, and Hyperactivity and heir....",
                      maxLines: 3,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "This article discusses the connection between yeast overgrowth and autism...",
                      maxLines: 3,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 140,
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
                            Text("Read more",
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
              ),
            ),
          ),
        );
      },
    );
  }

  Widget recentPost(size) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * .005),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Centered the column items
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  height: size.height * 0.12,
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
                SizedBox(width: size.width * 0.02),
                SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "March 2020",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.headlineColor),
                      ),
                      SizedBox(height: size.height * 0.006),
                      const Text(
                        "Eating Out While Pregnant:Is It A Good Idea?",
                        maxLines: 2,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                      ),
                      SizedBox(height: size.height * 0.006),
                      const Text(
                        "Read more",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xff22C55E)),
                      ),
                      SizedBox(height: size.height * 0.01),
                    ],
                  ),
                )
              ],
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
          height: size.height * 0.15, // Added width to the container
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
}
