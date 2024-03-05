import 'package:get/get.dart';
import 'package:yellowsquash_app/screens/about_us.dart';
import 'package:yellowsquash_app/screens/blog_screen/blog_details_screen.dart';
import 'package:yellowsquash_app/screens/blog_screen/blog_list_screen.dart';
import '../screens/expert_screen/expert_details_screen.dart';
import '../screens/expert_screen/expert_list_screen.dart';
import '../screens/favourite_screen.dart';
import '../screens/group_screens/group_list.dart';
import '../screens/program_screens/program_details_screen.dart';
import '../screens/program_screens/program_list_screen.dart';
import '../screens/program_screens/raise_query_list_screen.dart';
import '../screens/program_screens/raise_query_screen.dart';
import '../screens/splash_screen.dart';

class MyRouter{
  static var route = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: ProgramListScreen.programListScreen, page: () => const ProgramListScreen()),
    GetPage(name: ProgramScreenDetails.programDetailsScreen, page: () => const ProgramScreenDetails()),
    GetPage(name: AboutUsScreen.aboutUsScreen, page: () => const AboutUsScreen()),
    GetPage(name: BlogListScreen.blogsListScreen, page: () => const BlogListScreen()),
    GetPage(name: BlogDetailsScreen.blogsDetailsScreen, page: () => const BlogDetailsScreen()),
    GetPage(name: ExpertListScreen.expertListScreen, page: () => const ExpertListScreen()),
    GetPage(name: ExpertDetailsScreen.expertDetailsScreen, page: () => const ExpertDetailsScreen()),
    GetPage(name: GroupListScreen.groupListScreen, page: () => const GroupListScreen()),
    GetPage(name: FavouriteScreen.favouriteScreen, page: () => const FavouriteScreen()),
    GetPage(name: RaiseQuery.raiseQuery, page: () => const RaiseQuery()),
    GetPage(name: RaiseQueryList.raiseQueryList, page: () => const RaiseQueryList()),
  ];
}