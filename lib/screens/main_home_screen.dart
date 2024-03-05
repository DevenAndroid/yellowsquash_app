import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_app/resource/app_Assets.dart';
import 'package:yellowsquash_app/screens/HomePage.dart';
import 'package:yellowsquash_app/screens/about_us.dart';
import 'package:yellowsquash_app/screens/contactUSScreen.dart';
import 'package:yellowsquash_app/screens/faqScreen.dart';
import 'package:yellowsquash_app/screens/program_screens/program_list_screen.dart';
import 'package:yellowsquash_app/screens/program_screens/raise_query_list_screen.dart';
import 'package:yellowsquash_app/screens/program_screens/raise_query_screen.dart';
import 'package:yellowsquash_app/screens/webinar_screen/workshopsScreen.dart';
import '../controller/navbarcontroller.dart';
import 'blog_screen/blog_list_screen.dart';
import 'expert_screen/expert_list_screen.dart';
import 'favourite_screen.dart';
import 'group_screens/group_list.dart';
import 'my_account_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final bottomController = Get.put(BottomNavController());
  bool isCheck = true;
  final pages = [
    const HomePageScreen(),
    const ProgramListScreen(),
    const WorkShopsScreen(),
    const HomePageScreen(),
    const MyAccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Theme(
        data: ThemeData(useMaterial3: true),
        child: Scaffold(
          key: bottomController.scaffoldKey,
          drawer: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Drawer(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    // physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: size.width,
                          color: const Color(0xffF9D121),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.06,
                                top: size.height * 0.06,
                                right: size.width * 0.01,
                                bottom: size.height * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white, width: 2), shape: BoxShape.circle),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJiaZKjOQS7I-ftDQKzagCOWIZUonEoHS-p4OpngN4lg&s",
                                            errorWidget: (_, __, ___) => const Icon(Icons.person),
                                            placeholder: (_, __) => const SizedBox(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.height * 0.02,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Test",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500)),
                                          const Text("abc@gmail.comg",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                Row(
                                  children: [
                                    Text("Logout",
                                        textAlign: TextAlign.start,
                                        style:
                                            GoogleFonts.poppins(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: size.width * .01,
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black,
                                      size: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .007,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width * .06),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Explore",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                      fontSize: 18, color: const Color(0xff595959), fontWeight: FontWeight.w400)),
                              SizedBox(
                                width: size.width * .01,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    isCheck = !isCheck;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    isCheck == true ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                                    color: const Color(0xff595959),
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * .005,
                        ),
                        if (isCheck == true)
                          Column(
                            children: [
                              drawerTile(
                                  active: true,
                                  title: "Programs".tr,
                                  icon: const ImageIcon(AssetImage(AppAssets.program)),
                                  onTap: () {
                                    bottomController.changePage(0);
                                    Get.back();
                                  }),
                              drawerTile(
                                  active: true,
                                  title: "Events".tr,
                                  icon: const ImageIcon(AssetImage(AppAssets.webinar)),
                                  onTap: () {}),
                              drawerTile(
                                  active: true,
                                  title: "Experts".tr,
                                  icon: const ImageIcon(AssetImage(AppAssets.experts)),
                                  onTap: () {
                                    Get.toNamed(ExpertListScreen.expertListScreen);
                                  }),
                              drawerTile(
                                  active: true,
                                  title: "Healthpedia".tr,
                                  icon: const ImageIcon(AssetImage(AppAssets.healthpedia)),
                                  onTap: () {}),
                              drawerTile(
                                  active: true,
                                  title: "Groups".tr,
                                  icon: const ImageIcon(AssetImage(AppAssets.groups)),
                                  onTap: () {
                                    Get.toNamed(GroupListScreen.groupListScreen);
                                  }),
                              drawerTile(
                                  active: true,
                                  title: "Appointments".tr,
                                  icon: const ImageIcon(AssetImage(AppAssets.appointments)),
                                  onTap: () {
                                    Get.toNamed(FavouriteScreen.favouriteScreen);
                                  }),
                            ],
                          ),

                        Column(
                          children: [
                            Divider(
                              thickness: 8,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "My Programs".tr, onTap: () {
                              Get.toNamed(ProgramListScreen.programListScreen);
                            }),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "My Webinars".tr, onTap: () {
                              bottomController.changePage(2);
                              Get.back();
                            }),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "My Calender".tr, onTap: () {}),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "Settings".tr, onTap: () {}),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "Privacy Policy".tr, onTap: () {}),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "Legal".tr, onTap: () {
                              Get.toNamed(RaiseQueryList.raiseQueryList);
                            }),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "About Us".tr, onTap: () {
                              Get.to(()=>const AboutUsScreen());
                            }),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "Contact Us".tr, onTap: () {
                              Get.to(()=>const ContactUSScreen());
                            }),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                            drawerTile1(active: true, title: "FAQ".tr, onTap: () {
                              Get.to(()=>const FaqScreen());
                            }),
                          ],
                        )
                        // SizedBox(height:20,)
                      ],
                    ),
                  ),
                )),
          ),
          body: Obx((){
            return pages.elementAt(bottomController.currentIndex.value);
          }),
          extendBody: true,
          backgroundColor: Colors.white,
          bottomNavigationBar: Obx(() {
            return BottomAppBar(
                color: Colors.white,
                shape: const CircularNotchedRectangle(),
                clipBehavior: Clip.hardEdge,
                elevation: 10,
                shadowColor: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: size.width * .005),
                child: Theme(
                    data: ThemeData(
                        splashColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        bottomNavigationBarTheme:
                            const BottomNavigationBarThemeData(backgroundColor: Colors.white, elevation: 0)),
                    child: BottomNavigationBar(
                        unselectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                        items: [
                          BottomNavigationBarItem(
                            icon: GestureDetector(
                              onTap: () {},
                              child: const ImageIcon(
                                AssetImage(AppAssets.home),
                                size: 18,
                              ),
                            ),
                            label: 'Home',
                          ),

                          BottomNavigationBarItem(
                            icon: GestureDetector(
                              onTap: () {},
                              child: const ImageIcon(
                                AssetImage(AppAssets.program),
                                size: 18,
                              ),
                            ),
                            label: 'My Programs',
                          ),
                          BottomNavigationBarItem(
                              icon: GestureDetector(
                                onTap: () {},
                                child: GestureDetector(
                                  onTap: () async {},
                                  child: const ImageIcon(
                                    AssetImage(AppAssets.appointments),
                                    size: 20,
                                  ),
                                ),
                              ),
                              label: 'My Webinars'),
                          BottomNavigationBarItem(
                              icon: GestureDetector(
                                onTap: () async {},
                                child: const ImageIcon(
                                  AssetImage(AppAssets.groups),
                                  size: 18,
                                ),
                              ),
                              label: 'Chat'),
                          BottomNavigationBarItem(
                              icon: GestureDetector(
                                onTap: () async {},
                                child: const ImageIcon(
                                  AssetImage(AppAssets.groups),
                                  size: 18,
                                ),
                              ),
                              label: 'Account'),

                        ],
                        type: BottomNavigationBarType.fixed,
                        currentIndex: bottomController.currentIndex.value,
                        selectedItemColor: Colors.black,
                        iconSize: 40,
                        onTap: bottomController.changePage,
                        elevation: 0)));
          }),
        ));
  }

  Widget drawerTile({required bool active, required String title, required Widget icon, required VoidCallback onTap}) {
    return ListTile(
      selectedTileColor: Colors.white,
      leading: icon,
      minLeadingWidth: 25,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: active ? onTap : null,
    );
  }

  Widget drawerTile1({required bool active, required String title, required VoidCallback onTap}) {
    return ListTile(
      selectedTileColor: Colors.white,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: active ? onTap : null,
    );
  }
}
