import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:yellowsquash_app/screens/program_screens/program_details_screen.dart';
import '../../controller/navbarcontroller.dart';
import '../../widgets/apptheme.dart';
import '../../widgets/common_text_field.dart';

class ProgramListScreen extends StatefulWidget {
  const ProgramListScreen({super.key});
  static String programListScreen = "/programListScreen";
  @override
  State<ProgramListScreen> createState() => _ProgramListScreenState();
}

class _ProgramListScreenState extends State<ProgramListScreen> {
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
          title: const Text("Programs", style: TextStyle(fontWeight: FontWeight.w600,color: AppTheme.blackcolor)),
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
          actions: const [
            Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            // Stack(
            //   children: [
            //     const Icon(
            //       Icons.notifications_none,
            //       color: Colors.black,
            //     ),
            //     Positioned(
            //         right: 2,
            //         top: 2,
            //         child: Container(
            //           height: 8,
            //           width: 8,
            //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color(0xff22C55E)),
            //         )),
            //   ],
            // ),
            SizedBox(width: 10)
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: RegisterTextFieldWidget(
              hint: 'Search Here',
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: AppTheme.greenColor,
                ),
                onPressed: () {},
              ),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.filter_list_rounded,
                  color: AppTheme.greenColor,
                ),
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
              category(),
              programList(size)
        ])));
  }

  Widget category(){
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(children: [
        SizedBox(
          height: 30,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 100,
                  height: 60,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 5, right: 5),
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(color: AppTheme.greenColor)),
                                  child: const Center(child: Text('scrollable')))),
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
  Widget programList(size){
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Get.toNamed(ProgramScreenDetails.programDetailsScreen);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: Colors.white),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(
                        0.2,
                        0.2,
                      ),
                      blurRadius: 5,
                    ),
                  ]),
              child: Column(
                children: [
                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.2, // Added width to the container
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
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
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
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Functional medician Approach For Development Disorder',
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'ADHD | Austhama | Mental Health',
                          style: TextStyle(fontSize: 10, color: AppTheme.greenColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tempor blandit dignissim. Cras lacinia',
                          style: TextStyle(fontSize: 12, color: Color(0xff595959), fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: 4,
                                  itemCount: 5,
                                  itemSize: 15.0,
                                  unratedColor: Colors.grey,
                                  physics: const BouncingScrollPhysics(),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                const Text(
                                  " 4.9 Reviews",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff595959),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
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
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: size.height *.035,
                          width: size.width *.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: ElevatedButton(
                            onPressed: (){

                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xff22C55E),
                                backgroundColor: const Color(0xff22C55E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                )
                            ),
                            child: const Center(child: Text("Subscribe Now", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white))),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          );
        });
  }


}
