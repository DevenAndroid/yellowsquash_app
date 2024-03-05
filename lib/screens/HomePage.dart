import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowsquash_app/resource/app_Assets.dart';
import 'package:yellowsquash_app/screens/program_screens/program_details_screen.dart';
import 'package:yellowsquash_app/screens/program_screens/program_list_screen.dart';
import '../controller/navbarcontroller.dart';
import 'blog_screen/blog_list_screen.dart';
import 'expert_screen/expert_list_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  final bottomController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 10,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(.2),
        title: const Image(image: AssetImage(AppAssets.splash)),
        centerTitle: true,
        leading: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              bottomController.scaffoldKey.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 30,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJiaZKjOQS7I-ftDQKzagCOWIZUonEoHS-p4OpngN4lg&s",
                    errorWidget: (_, __, ___) => const Icon(Icons.person),
                    placeholder: (_, __) => const SizedBox(),
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              Positioned(
                  right: 2,
                  top: 2,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color(0xff22C55E)),
                  )),
            ],
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hey Saket",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Text(
                "Find a program do you want to join",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade500),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff22C55E),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xff22C55E)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff22C55E),
                        size: 14,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .02,
              ),
              categories(size),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Workshops",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff22C55E),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xff22C55E)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff22C55E),
                        size: 14,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .02,
              ),
              workshops(size),
              SizedBox(
                height: size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Experts",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(ExpertListScreen.expertListScreen);
                    },
                    child: const Row(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff22C55E),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff22C55E)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff22C55E),
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .02,
              ),
              experts(size),
              SizedBox(
                height: size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Programs",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(ProgramListScreen.programListScreen);
                    },
                    child: const Row(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff22C55E),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff22C55E)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff22C55E),
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .02,
              ),
              programs(size),
              SizedBox(
                height: size.height * .02,
              ),
              slider(size),
              SizedBox(
                height: size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Latest Blogs",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(BlogListScreen.blogsListScreen);
                        },
                        child: const Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff22C55E),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff22C55E)),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff22C55E),
                        size: 14,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .02,
              ),
              latestBlogs(size),
              SizedBox(
                height: size.height * .09,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categories(size) {
    return Stack(
      children: [
        // Positioned(
        //     left: -10,
        //     top: size.height * 0.04,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(100),
        //           color: Colors.amber
        //       ),
        //       child: const Padding(
        //         padding: EdgeInsets.all(4.0),
        //         child: Center(child: Icon(Icons.arrow_forward_ios_rounded,size: 10,color: Colors.white,),),
        //       ),
        //     )),
        SizedBox(
          height: size.height * 0.16,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Added padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, // Centered the column items
                  children: [
                    Container(
                      width: size.width * 0.2,
                      height: size.height * 0.1, // Added width to the container
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CachedNetworkImage(
                          imageUrl: "",
                          errorWidget: (_, __, ___) => const Icon(
                            Icons.category,
                            color: Color(0xff22C55E),
                          ),
                          placeholder: (_, __) => const SizedBox(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4), // Added space between the image and text
                    Text(
                      "Category",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget workshops(size) {
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
                      Container(
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
                  height: size.height * 0.12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Functional Medicine Program for Autism & Developmental...",
                        maxLines: 2,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade500),
                      ),
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

  Widget experts(size) {
    return SizedBox(
      height: size.height * 0.17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0), // Added padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Centered the column items
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.height * 0.1, // Added width to the container
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
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
                  child: CachedNetworkImage(
                    imageUrl: "",
                    errorWidget: (_, __, ___) => const Icon(
                      Icons.person,
                      color: Color(0xff22C55E),
                    ),
                    placeholder: (_, __) => const SizedBox(),
                  ),
                ),
                SizedBox(height: size.height * 0.01), // Added space between the image and text
                SizedBox(
                  width: size.width * 0.2,
                  child: Text(
                    "By Dr Ashwani Garg",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade500),
                  ),
                ),
              ],
            ),
          );
        },
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
                  height: size.height * 0.12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Functional Medicine Program for Autism & Developmental...",
                        maxLines: 2,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade500),
                      ),
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

  List<String> sliderList = [
    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
  ];

  Widget slider(size) {
    return SizedBox(
      height: size.height * 0.20,
      child: CarouselSlider(
        options: CarouselOptions(height: size.height * 0.20, autoPlay: true, viewportFraction: 1),
        items: sliderList.map((i) {
          return Container(
            width: double.maxFinite,
            padding: const EdgeInsets.only(right: 5.0, left: 5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: i,
                  fit: BoxFit.cover,
                  errorWidget: (_, __, ___) => const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                )),
          );
        }).toList(),
      ),
    );
  }

  Widget latestBlogs(size) {
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
              boxShadow: [
                BoxShadow(
                  offset: const Offset(5, 5),
                  color: Colors.grey.shade300,
                  spreadRadius: .2,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Centered the column items
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "By Dr Ashwani Garg | Jan 30, 2024",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                      ),
                      const Text(
                        "Functional Medicine Program for Autism & Developmental...",
                        maxLines: 2,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.amber),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
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
}
