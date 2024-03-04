
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import '../../widgets/apptheme.dart';
import '../contactUSScreen.dart';


class WorkShopDetailsScreen extends StatefulWidget {
  const WorkShopDetailsScreen({super.key});

  @override
  State<WorkShopDetailsScreen> createState() => _WorkShopDetailsScreenState();
}

class _WorkShopDetailsScreenState extends State<WorkShopDetailsScreen> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController =
        VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(
            onTap: () => debugPrint('Option 1 pressed!'),
            iconData: Icons.chat,
            title: 'Option 1',
          ),
          OptionItem(
            onTap: () => debugPrint('Option 2 pressed!'),
            iconData: Icons.share,
            title: 'Option 2',
          ),
        ];
      },
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: Get.width,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: chewieController != null
                      ? Chewie(
                          controller: chewieController!,
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )),
                const Positioned(
                    top: 30,
                    right: 20,
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ADHD | Austhama | Mental Health',
                    style: GoogleFonts.poppins(fontSize: 10, color: AppTheme.greenColor, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Functional medician Approach For Development Disorder',
                    style: GoogleFonts.poppins(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: AppTheme.greenColor,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          'Feb,28,2024 | 07:30 PM - 09:30 PM (IST)',
                          style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: const Color(
                                0xff939393,
                              ),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Webinar Starts in',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(
                          0xff2D2D2D,
                        ),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                '0',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: const Color(
                                      0xff2D2D2D,
                                    )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Days',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        ':',
                        style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                '7',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: const Color(
                                      0xff2D2D2D,
                                    )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Hours',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        ':',
                        style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                '43',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: const Color(
                                      0xff2D2D2D,
                                    )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Minutes',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        ':',
                        style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                '25',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: const Color(
                                      0xff2D2D2D,
                                    )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Seconds',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Expert',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color(
                          0xff2D2D2D,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        minRadius: 45,
                        maxRadius: 45,
                        child: Image.network(
                            'https://www.embark.ca/wp-content/uploads/2023/12/How-to-become-a-doctor-1300x1065-1.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Ashwani Garg',
                              style: TextStyle(fontSize: 14, color: AppTheme.greenColor, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Functional Medicine Expert , MBBS',
                              style: TextStyle(fontSize: 10, color: Color(0xff939393), fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Dr Ashwani’s dream to make a difference in healthcare made him move from clinical practice to healthcare innovations.',
                              style: TextStyle(fontSize: 8, color: Color(0xff595959), fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'About Workshop',
                    style: GoogleFonts.poppins(fontSize: 16, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The 120 MIN interactive session will cover :',
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Common root causes that lead to symptoms of digestive disorders :',
                    style:
                        GoogleFonts.poppins(fontSize: 10, color: const Color(0xff939393), fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Know the root causes behind GERD, Gastritis, Acid Reflux, IBS, IBD & other Digestive Disorders and what best can be done to overcome these as per latest scientific research!',
                    style:
                        GoogleFonts.poppins(fontSize: 10, color: const Color(0xff939393), fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'What you’ll learn in this exclusive session:',
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''1. Why the current symptomatic approach doesnt work?
                      2. How to identify any Gut Imbalances and Infections (Bacterial, Parasitic, Fungal or Viral)?
                      3. What can be done for IBS, IBD, Constipation, Hyper Acidity, Gastritis, GERD and more?
                ''',
                    style:
                        GoogleFonts.poppins(fontSize: 10, color: const Color(0xff939393), fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Who is it for?',
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/person.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'People who are seeking sustainable relief from digestive disorders by treating root causes.',
                          style: GoogleFonts.poppins(
                              fontSize: 10, color: const Color(0xff939393), fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(40),
              decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(11)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'HURRY! Seats filling FAST!',
                    style: GoogleFonts.oswald(fontSize: 23, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(const ContactUSScreen());
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      height: 40,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xffFFE575),
                                Color(0xffF9D121),
                              ],
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(0.0, 1.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text('Register Now',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500, color: Colors.black, letterSpacing: .5, fontSize: 14)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'For Rs. 198',
                    style: GoogleFonts.oswald(fontSize: 25, color: AppTheme.greenColor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Reserve your seat before  February 7 2024  to confirm your slot!',
                    style: GoogleFonts.oswald(fontSize: 15, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Vector.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Duration : 120 MIN',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/calendar.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Starting on : 7th Feb,2024',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: AppTheme.blackcolor, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
