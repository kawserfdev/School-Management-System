import 'package:aladin/modules/all-term/view/term.dart';
import 'package:aladin/modules/attendance/view/attendance.dart';
import 'package:aladin/modules/home/view/screens/dashboard.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/notification/view/notification_screen.dart';
import 'package:aladin/modules/onbording/view/onbording_screen.dart';
import 'package:aladin/modules/result-summary/view/result-summary.dart';
import 'package:aladin/modules/splash/select_profile.dart';
import 'package:aladin/modules/splash/splash_screen.dart';
import 'package:aladin/modules/splash/select_language.dart';
import 'package:aladin/modules/splash/splash_screen_two.dart';
import 'package:aladin/modules/splash/tearms_and_condition.dart';
import 'package:aladin/modules/teacher-modules/menual-attendance/view/menual-attendance.dart';
import 'package:aladin/modules/view-attendance/view/view-attendance.dart';
import 'package:get/route_manager.dart';
import '../bindings/bindings.dart';

class AllRoutes {
  static List<GetPage> allRoutes = [
    GetPage(
      name: SplashScreen.routeName,
      page: () => SplashScreen(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: NotificationScreen.routeName,
      page: () => const NotificationScreen(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: Onboard.routeName,
      page: () => const Onboard(),
      binding: BannerBinding(),
    ),
    GetPage(
      name: SplashScreenTwo.routeName,
      page: () => const SplashScreenTwo(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: SplashScreenThree.routeName,
      page: () => const SplashScreenThree(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: SelectProfile.routeName,
      page: () => const SelectProfile(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: Terms_condition.routeName,
      page: () => const Terms_condition(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: ResultTermPage.resltTermRout,
      page: () => const ResultTermPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: ResultSummaryPage.resultSummaryRoute,
      page: () => const ResultSummaryPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AttendancePage.attendanceRoute,
      page: () => const AttendancePage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: ViewAttendancePage.viewAttendanceRoute,
      page: () => const ViewAttendancePage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: MenualAttendacePage.attendanceRoute,
      page: () => const MenualAttendacePage(),
      binding: InitialBinding(),
    ),
  ];
}
