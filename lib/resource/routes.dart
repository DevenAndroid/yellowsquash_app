import 'package:get/get.dart';
import 'package:yellowsquash_app/screens/about_us.dart';
import '../screens/HomePage.dart';
import '../screens/joinNowScren.dart';
import '../screens/program_screens/program_details_screen.dart';
import '../screens/program_screens/program_list_screen.dart';
import '../screens/requestNewTimeScreen.dart';
import '../screens/resetPassword/createNewPasswordScreen.dart';
import '../screens/resetPassword/resetPasswordEmail.dart';
import '../screens/resetPassword/resetPasswordOtpScreen.dart';
import '../screens/settingScreen.dart';
import '../screens/splashScreen/splashScreen.dart';
import '../screens/splash_screen.dart';

class MyRouter{
  static var route = [
  GetPage(name: '/', page: () => const JoinNowScreen()),
  GetPage(name: ProgramListScreen.programListScreen, page: () => const ProgramListScreen()),
  GetPage(name: ProgramScreenDetails.programDetailsScreen, page: () => const ProgramScreenDetails()),
  GetPage(name: AboutUsScreen.aboutUsScreen, page: () => const AboutUsScreen())
  ];
}