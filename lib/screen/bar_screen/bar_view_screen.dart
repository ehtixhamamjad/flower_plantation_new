import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../app_routes/app_routes.dart';
import '../../constant/style/app_color.dart';
import '../cart_screen/cart_view_screen.dart';
import '../dara.dart';
import '../home_screen/home_view_screen.dart';
import '../login_screen/login_screen.dart';

class BarViewScreen extends StatefulWidget {
  const BarViewScreen({super.key});

  @override
  State<BarViewScreen> createState() => _BarViewScreenState();
}

class _BarViewScreenState extends State<BarViewScreen> {
  final picker = ImagePicker();

  Future<void> pickImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      // Process the picked image
      final imageFile = File(pickedFile.path);
      // ...
    }
  }
  int id =1;
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
            page = CartScreen();

            break;
          case 2:
            page = const LoginScreen ();
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
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
