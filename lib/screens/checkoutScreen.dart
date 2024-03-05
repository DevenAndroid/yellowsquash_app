
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Checkout',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  // Left Column with Image and Icons
                  SizedBox(
                    width: 100,
                    height: 100,
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Kumbhak Therapy for Diabetes Reversal',
                          style: TextStyle(fontSize: 12, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'By Swami Rajvibhu',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        '12000',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppTheme.grayColor,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '₹ 10000',
                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Have a coupon code?',
                    style: TextStyle(fontSize: 14, color: Color(0xff22C55E), fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BASIC DETAILS',
                  style: GoogleFonts.poppins(fontSize: 10, color: const Color(0xff595959), fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full name',
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'Manish',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email Id',
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'manishprajapat207@gmail.com',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: '+917665096245',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address',
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'jaipur',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'City/ Town/ District',
                              style:
                              GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const RegisterTextFieldWidget(
                              hint: 'jaipur',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pincode',
                              style:
                              GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const RegisterTextFieldWidget(
                              hint: 'jaipur',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'State',
                              style:
                              GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const RegisterTextFieldWidget(
                              hint: 'jaipur',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Country',
                              style:
                              GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const RegisterTextFieldWidget(
                              hint: 'jaipur',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please note that the above information will be used to generate the invoice.',
                    style: GoogleFonts.poppins(fontSize: 8, color: AppTheme.grayColor, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BILL DETAILS',
                  style: GoogleFonts.poppins(fontSize: 10, color: const Color(0xff595959), fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'Total Price',
                        style:
                            GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Total Discount',
                        style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xff22C55E), fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      '₹ 12000',
                      style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '₹ 1000',
                      style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xff22C55E), fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade200,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Grand Total',
                    style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  '₹ 9000',
                  style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade200,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/upi.png',
                          height: 25,
                        ),
                        Text(
                          'PAY USING',
                          style:
                              GoogleFonts.poppins(fontSize: 10, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                        ),
                        const Icon(Icons.arrow_drop_up)
                      ],
                    ),
                    Text(
                      '9999999999@icici',
                      style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xffFFE575),
                      backgroundColor: const Color(0xffF9D121),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      )),
                  child: Center(
                      child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '₹ 9000',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Total',
                            style: GoogleFonts.poppins(
                                fontSize: 9, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                       SizedBox(width: 10,),
                      const Text("Pay Now",
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor)),
                      const Icon(
                        Icons.arrow_right,
                        color: AppTheme.blackcolor,
                        size: 20,
                      ),

                    ],
                  )),
                ),
                SizedBox(width: 10,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
