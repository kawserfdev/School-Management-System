import 'package:aladin/modules/home/controller/homepage_controller.dart';
import 'package:aladin/modules/home/view/screens/dashboard.dart';
import 'package:aladin/modules/live_chat/chat.dart';
import 'package:aladin/modules/notice-board/view/notice-board.dart';
import 'package:aladin/modules/profile/view/screen/profile_page.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/homeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedPage = 0;

  HomePageController homePageController = Get.find<HomePageController>();
  // ignore: unused_field
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    List<String> args = Get.arguments ?? [];
    if (args.isNotEmpty) {
      _selectedPage = int.parse(args[0]);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      /* drawer: HomeDrawer(
        scaffoldKey: _scaffoldKey,
        navigatingFn: (value) {
          _scaffoldKey.currentState!.closeDrawer();
          setState(
            () => _selectedPage = value,
          );
          */ /* if (value != 5) {
          }*/ /*
        },
      ),*/
      body: getBodyView(),
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        backgroundColor: Colors.transparent,
        color: Color(0xFFF7932B),
        // ConstantColors.primaryColor,
        iconPadding: 20,
        items: const [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: 'Home',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
              ),
              label: 'Chat',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.newspaper,
                color: Colors.white,
              ),
              label: 'Notice',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.perm_identity,
                color: Colors.white,
              ),
              label: 'Profile',
              labelStyle: TextStyle(color: Colors.white)),
        ],
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
      ),
    );
  }

  Widget getBodyView() {
    switch (_selectedPage) {
      case 0:
/*        return HomePage(
          scaffoldKey: _scaffoldKey,
          homePageController: homePageController,
        );*/
        return const DashBoard();

      case 1:
        return const ChatScreen();
      case 2:
        return const NoticeboardPage();
      case 3:
        return const ProfilePage();

      default:
        return const Center(
          child: Text(
            "Something wrong",
          ),
        );
    }
  }
}
