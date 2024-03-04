import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_app/widgets/apptheme.dart';

import '../widgets/common_text_field.dart';

class HowToControlDiabetesScreen extends StatefulWidget {
  const HowToControlDiabetesScreen({super.key});

  @override
  State<HowToControlDiabetesScreen> createState() => _HowToControlDiabetesScreenState();
}

class _HowToControlDiabetesScreenState extends State<HowToControlDiabetesScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'How To Control Diabetes',
          style: TextStyle(color: AppTheme.blackcolor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: const Icon(Icons.arrow_back_outlined)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width,
                height: 170,
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
                height: 20,
              ),
              Text(
                'Diabetes is a chronic (long-lasting) health condition that affects how your body turns food into energy.Your body breaks down most of the food you eat into sugar (glucose) and releases it into your bloodstream. When your blood sugar goes up, it signals your pancreas to release insulin. Insulin acts like a key to let the blood sugar into your bodys cells for use as energy.',
                style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '14 Easy Ways to Lower Blood Sugar Levels Naturally',
                style: GoogleFonts.oswald(fontSize: 18, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (index, context) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppTheme.greenColor,
                              maxRadius: 7,
                              minRadius: 7,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Exercise regularly : ',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500, fontSize: 14, color: AppTheme.grayColor)),
                                TextSpan(
                                    text:
                                        'Exercise increases insulin sensitivity and helps your muscles use blood sugar for movement. This can lead to reduced blood sugar levels.',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400, fontSize: 14, color: AppTheme.grayColor)),
                              ])),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              Text(
                'How can I check my blood sugar?',
                style: GoogleFonts.oswald(fontSize: 18, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: Get.width,
                height: 170,
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
                height: 10,
              ),
              Text(
                'Use a blood sugar meter (also called a glucometer) or a continuous glucose monitor (CGM) to check your blood sugar. A blood sugar meter measures the amount of sugar in a small sample of blood, usually from your fingertip. A CGM uses a sensor inserted under the skin to measure your blood sugar every few minutes. If you use a CGM, you’ll still need to test daily with a blood sugar meter to make sure your CGM readings are accurate.',
                style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'How can I check my blood sugar?',
                style: GoogleFonts.oswald(fontSize: 23, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'How often you check your blood sugar depends on the type of diabetes you have and if you take any diabetes medicines.Typical times to check your blood sugar include:',
                style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (index, context) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppTheme.greenColor,
                              maxRadius: 7,
                              minRadius: 7,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                ' When you first wake up, before you eat or drink anything. ',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (index, context) {
                    return Container(
                      width: Get.width,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                              blurRadius: 1,
                            ),
                          ]),
                      child: const Row(
                        children: [
                          SizedBox(width: 10),
                          // Left Column with Image and Icons
                          CircleAvatar(
                            minRadius: 30,
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'ADHD | Austhama | Mental Health',
                                  style: TextStyle(fontSize: 10, color: AppTheme.greenColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Functional medician Approach For Development Disorder',
                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Symptoms of diabetes include',
                style: GoogleFonts.oswald(fontSize: 23, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (index, context) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppTheme.greenColor,
                              maxRadius: 7,
                              minRadius: 7,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Urinating a lot, often at night',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Best Experts who can help you in getting more knowledge about diabetes',
                style: GoogleFonts.oswald(fontSize: 23, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.',
                style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (index, context) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppTheme.greenColor,
                              maxRadius: 7,
                              minRadius: 7,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Satyajit Dash : ',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500, fontSize: 14, color: AppTheme.grayColor)),
                                TextSpan(
                                    text: 'LCHF Coach | Sports Nutrition',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400, fontSize: 14, color: AppTheme.grayColor)),
                              ])),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Watch our webniars for improve your knowledge about diabetes and how to control it.',
                style: GoogleFonts.oswald(fontSize: 23, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: Get.width,
                padding: EdgeInsets.zero,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.white, boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(
                      0.2,
                      0.2,
                    ),
                    blurRadius: 1,
                  ),
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Get.width,
                        height: 200, // Added width to the container
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
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.date_range,
                                  color: Color(0xff22C55E),
                                  size: 20,
                                ),
                                Expanded(
                                    child: Text(
                                  " Feb 28, 2024 | 07:30 - 09:30(IST)",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                )),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "2-Day Workshop on Low Carb Healthy Fat (LCHF) Lifestyle",
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Diabetes | Heart Health | Weight Loss",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.grayColor),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  minRadius: 20,
                                  maxRadius: 20,
                                  backgroundImage: NetworkImage(
                                    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
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
                                        'Satyajit Dash',
                                        style: GoogleFonts.poppins(
                                            fontSize: 14, color: AppTheme.greenColor, fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'LCHF Coach | Sports Nutrition',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10, color: AppTheme.grayColor, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.',
                style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Conclusion',
                style: GoogleFonts.oswald(fontSize: 23, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.',
                style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Subscribe Our Newsletter',
                  style: GoogleFonts.poppins(fontSize: 30, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Integer venenatis consequat elit. Curabitur eget laoreet nibh. Cras euismod, tellus vitae luctus ultricies, lacus erat sagittis nulla, id ornare velit ligula congue ex. Etiam rhoncus urna ut pulvinar euismod.',
                  style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xff434343), fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextFieldWidget(
                hint: "Enter your email address...",
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * .05,
                  width: size.width * .45,
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
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
