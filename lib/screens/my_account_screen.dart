import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowsquash_app/widgets/common_text_field.dart';

import '../controller/navbarcontroller.dart';
import '../resource/app_Assets.dart';
import '../widgets/apptheme.dart';
import '../widgets/custom_dropdown.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  final bottomController = Get.put(BottomNavController());
  String? selectGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
       child: Column(
         children: [
           const SizedBox(height: 10),
           Align(
             alignment: Alignment.center,
             child: Stack(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     border: Border.all(width: 6,color: Colors.white),
                     borderRadius: BorderRadius.circular(100),
                     boxShadow: [
                       BoxShadow(
                         offset: const Offset(5, 5),
                         color: Colors.grey.shade300,
                         spreadRadius: .5,
                         blurRadius: 10,
                       ),
                     ],
                   ),
                   child:  ClipRRect(
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
                 Positioned(
                     right: 1,
                     top: 5,
                     child: Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color(0xff0FA654)),
                       child: const Padding(
                         padding: EdgeInsets.all(4.0),
                         child: Icon(Icons.camera_alt_outlined,color: AppTheme.backgroundcolor,),
                       ),
                     )),
               ],
             ),
           ),
           const SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text("Full Name",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                 const SizedBox(height: 5),
                 const SearchTextFieldWidget(
                   hint: "Enter Your Full Name",
                 ),
                 const SizedBox(height: 10),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     const Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Age",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                           SizedBox(height: 5),
                           SearchTextFieldWidget(
                             hint: "Age",
                           ),
                         ],
                       ),
                     ),
                     const SizedBox(width: 20),
                     Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text("Gender",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                           const SizedBox(height: 5),
                           CustomDropdownTextField(
                             items: const ['Male', 'Female'],
                             hintText: 'Select Gender',
                             onChanged: (value) {
                               selectGender = value;
                               if (kDebugMode) {
                                 print('Selected item: $value');
                               }
                             },
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
                 const SizedBox(height: 10),
                 const Text("Location",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                 const SizedBox(height: 5),
                 CustomDropdownTextField(
                   items: const ['Male', 'Female'],
                   hintText: 'Select Location',
                   onChanged: (value) {
                     selectGender = value;
                     if (kDebugMode) {
                       print('Selected item: $value');
                     }
                   },
                 ),
                 const SizedBox(height: 10),
                 const Text("Timezone",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                 const SizedBox(height: 5),
                 CustomDropdownTextField(
                   items: const ['Male', 'Female'],
                   hintText: 'Select Timezone',
                   onChanged: (value) {
                     selectGender = value;
                     if (kDebugMode) {
                       print('Selected item: $value');
                     }
                   },
                 ),
                 const SizedBox(height: 10),
                 const Text("Email ID",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                 const SizedBox(height: 5),
                 const SearchTextFieldWidget(
                   hint: "Enter Your Email ID",
                 ),
                 const SizedBox(height: 10),
                 const Text("Mobile Number",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                 const SizedBox(height: 5),
                 const SearchTextFieldWidget(
                   hint: "+919898989898",
                 ),
                 const SizedBox(height: 10),
                 const Text("Conditions",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                 const SizedBox(height: 5),
                 CustomDropdownTextField(
                   items: const ['Male', 'Female'],
                   hintText: 'Select Location',
                   onChanged: (value) {
                     selectGender = value;
                     if (kDebugMode) {
                       print('Selected item: $value');
                     }
                   },
                 ),
                 const SizedBox(height: 10),
                 const Text("Interests",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400)),
                 const SizedBox(height: 5),
                 CustomDropdownTextField(
                   items: const ['Male', 'Female'],
                   hintText: 'Select Location',
                   onChanged: (value) {
                     selectGender = value;
                     if (kDebugMode) {
                       print('Selected item: $value');
                     }
                   },
                 ),
                 const SizedBox(height: 40),
                 Align(
                   alignment: Alignment.center,
                   child: Container(
                     height: 50,
                     width: 100,
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
                           child: Text("Save",
                               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor))),
                     ),
                   ),
                 ),
                 const SizedBox(height: 100),
               ],
             ),
           )
         ],
       ),
      ),
    );
  }
}
