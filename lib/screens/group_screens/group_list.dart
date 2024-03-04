import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowsquash_app/widgets/apptheme.dart';
import 'package:yellowsquash_app/widgets/back_app_bar.dart';

class GroupListScreen extends StatefulWidget {
  const GroupListScreen({super.key});
  static String groupListScreen = "/groupListScreen";

  @override
  State<GroupListScreen> createState() => _GroupListScreenState();
}

class _GroupListScreenState extends State<GroupListScreen> {
  String checkValue = "For you";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppTheme.yellowColor,
            iconTheme: const IconThemeData(color: AppTheme.blackcolor),
            title: Text(
              "Groups",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 20, color: AppTheme.blackcolor),
            ),
            actions: const [
              Icon(Icons.add_circle_outline_rounded),
              SizedBox(width: 10),
              Icon(Icons.search),
              RotatedBox(quarterTurns: 5, child: Icon(Icons.keyboard_control_rounded)),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                checkValue = "For you";
                                setState(() {});
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: AppTheme.lightGreen,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: AppTheme.primaryColor)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "For you",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                                    ),
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                checkValue = "Your groups";
                                setState(() {});
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: AppTheme.lightGreen,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: AppTheme.primaryColor)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Your groups",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                                    ),
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                checkValue = "Discover";
                                setState(() {});
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: AppTheme.lightGreen,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: AppTheme.primaryColor)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Discover",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      const Icon(Icons.filter_alt_outlined, color: AppTheme.subTitleColor)
                    ],
                  ),
                ),
                checkValue == "For you"
                    ? forYou()
                    : checkValue == "Your groups"
                        ? yourGroup()
                        : yourGroup(),
              ],
            ),
          )),
    );
  }

  Widget forYou() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffF3F3F3)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Women Health Group",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_control_rounded),
                                    Icon(Icons.clear_rounded),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Swami Rajvibhu",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
                                ),
                                Text(
                                  "   24 minutes ago",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices rhoncus arcu.",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    width: Get.width,
                    child: ClipRRect(
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                        errorWidget: (_, __, ___) => const Icon(Icons.person),
                        placeholder: (_, __) => const SizedBox(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.favorite_border_rounded, color: AppTheme.subTitleColor),
                          Text(
                            "200 Like",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.mode_comment_outlined, color: AppTheme.subTitleColor),
                          Text(
                            "100 Comments",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: AppTheme.subTitleColor,
                          ),
                          Text(
                            "250 Shares",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget yourGroup() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Groups you manage",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
          ),
          const SizedBox(height: 10),
          const Text(
            "Become an admin or moderator to see it here   ",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 40,
              width: 150,
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
                    child: Text("Create Group",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor))),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Groups you’re in",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
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
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                                ),
                                Text(
                                  "3.8K members",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
