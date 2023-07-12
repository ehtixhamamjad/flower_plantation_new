import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_routes/app_routes.dart';
import '../../constant/style/app_color.dart';
import '../cart_screen/cart_view_screen.dart';
import '../home_screen/home_view_screen.dart';
import '../login_screen/login_screen.dart';

class BarViewScreen extends StatefulWidget {
  const BarViewScreen({super.key});

  @override
  State<BarViewScreen> createState() => _BarViewScreenState();
}

class _BarViewScreenState extends State<BarViewScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      resizeToAvoidBottomInset: true,
      tabBar: CupertinoTabBar(
        activeColor: appthem,
        inactiveColor: cDarkGray,
        backgroundColor: colorWhite,

        //  backgroundColor: Color(0xff2086AE),
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.home,
                color: cDarkGray,
              ),
              activeIcon: const Icon(
                Icons.home,
                color: appthem,
              ),
              label: 'Home',
              tooltip: 'tool tip'),


          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.camera_alt,
                color: cDarkGray,
              ),
              activeIcon: const Icon(
                Icons.camera_alt_outlined,
                color: appthem,
              ),
              label: 'Camera'),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.settings,
                color: cDarkGray,
              ),
              activeIcon: const Icon(
                Icons.settings,
                color: appthem,
              ),
              label: 'Account'),
        ],
      ),
      tabBuilder: (context, index) {
        Widget page;
        switch (index) {
          case 0:
            page = const HomeScreen();
            break;
          case 1:
            page = const LoginScreen();
            break;
          case 2:
            page = const CartScreen();
            break;
          default:
            page = Container();
        }
        return CupertinoTabView(
          onGenerateRoute: AppRoutes.generateRoute,
          builder: (context) => Material(child: page),
        );
      },
    );
  }
}
