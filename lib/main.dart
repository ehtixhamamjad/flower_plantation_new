import 'package:flower_plantation_new/screen/bar_screen/bar_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(



            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
           theme: ThemeData(
          appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark
          )
          ),

          primarySwatch: Colors.blue,
          ),
            home: BarViewScreen(),
            // initialBinding: InitializingDependencise(),
            // initialRoute:BarViewScreen() ,
            // onGenerateRoute: AppRoutes.generateRoute,
          );
        }
    );
  }
}


