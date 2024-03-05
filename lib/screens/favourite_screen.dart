import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resource/app_Assets.dart';
import '../widgets/apptheme.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});
  static String favouriteScreen = "/favouriteScreen";

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.yellowColor,
        iconTheme: const IconThemeData(color: AppTheme.blackcolor),
        title: Text(
          "Favourite",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w500, fontSize: 20, color: AppTheme.blackcolor),
        ),
      ),
      body: Theme(
        data: ThemeData(useMaterial3: true),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                favouriteWebinar(),
                const SizedBox(height: 15),
                favouriteProgram(),
                const SizedBox(height: 15),
                favouriteExpert()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget favouriteWebinar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Favourite Webinars",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: Get.width * .9,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(
                          .1,
                          .1,
                        ),
                        blurRadius: 20.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                fit: BoxFit.cover,
                                errorWidget: (_, __, ___) => const SizedBox(),
                                placeholder: (_, __) => Image.asset(
                                  AppAssets.nutrition,
                                  color: Colors.grey.shade200,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(Icons.favorite, color: Color(0xffCC3D36),size: 15,),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alternate Therapy | Hormonal Issues | Nutrition",
                            maxLines: 2,
                            style: GoogleFonts.poppins(color: AppTheme.subTitleColor, fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Functional Medicine Program for Autism & Developmental...",
                            maxLines: 2,
                            style: GoogleFonts.poppins(color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                      errorWidget: (_, __, ___) => const Icon(Icons.person),
                                      placeholder: (_, __) => const SizedBox(),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Women Health Group",
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                    ),
                                    Text(
                                      "Swami Rajvibhu",
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Row(
                            children: [
                              Icon(
                                Icons.play_arrow_rounded,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Watch Intro",
                                maxLines: 2,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.date_range_rounded,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  "8 Dec, 2021 (Wed) | 7 PM",
                                  maxLines: 2,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget favouriteProgram() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Favourite Programs",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: Get.width * .9,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(
                          .1,
                          .1,
                        ),
                        blurRadius: 20.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                fit: BoxFit.cover,
                                errorWidget: (_, __, ___) => const SizedBox(),
                                placeholder: (_, __) => Image.asset(
                                  AppAssets.nutrition,
                                  color: Colors.grey.shade200,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(Icons.favorite, color: Color(0xffCC3D36),size: 15,),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alternate Therapy | Hormonal Issues | Nutrition",
                            maxLines: 2,
                            style: GoogleFonts.poppins(color: AppTheme.subTitleColor, fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Functional Medicine Program for Autism & Developmental...",
                            maxLines: 2,
                            style: GoogleFonts.poppins(color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                      errorWidget: (_, __, ___) => const Icon(Icons.person),
                                      placeholder: (_, __) => const SizedBox(),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Women Health Group",
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                    ),
                                    Text(
                                      "Swami Rajvibhu",
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Row(
                            children: [
                              Icon(
                                Icons.play_arrow_rounded,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Watch Intro",
                                maxLines: 2,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.date_range_rounded,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  "8 Dec, 2021 (Wed) | 7 PM",
                                  maxLines: 2,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget favouriteExpert() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Favourite Experts",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: Get.width * .9,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(
                          .1,
                          .1,
                        ),
                        blurRadius: 20.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                fit: BoxFit.cover,
                                errorWidget: (_, __, ___) => const SizedBox(),
                                placeholder: (_, __) => Image.asset(
                                  AppAssets.nutrition,
                                  color: Colors.grey.shade200,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(Icons.favorite, color: Color(0xffCC3D36),size: 15,),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alternate Therapy | Hormonal Issues | Nutrition",
                            maxLines: 2,
                            style: GoogleFonts.poppins(color: AppTheme.subTitleColor, fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Functional Medicine Program for Autism & Developmental...",
                            maxLines: 2,
                            style: GoogleFonts.poppins(color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                      errorWidget: (_, __, ___) => const Icon(Icons.person),
                                      placeholder: (_, __) => const SizedBox(),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Women Health Group",
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                    ),
                                    Text(
                                      "Swami Rajvibhu",
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Row(
                            children: [
                              Icon(
                                Icons.play_arrow_rounded,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Watch Intro",
                                maxLines: 2,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.date_range_rounded,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  "8 Dec, 2021 (Wed) | 7 PM",
                                  maxLines: 2,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
