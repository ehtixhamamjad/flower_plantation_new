import 'package:flutter/material.dart';

import '../constant/router_string/route_string.dart';
import '../screen/bar_screen/bar_view_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case navbarScreen:
        return MaterialPageRoute(builder: (context) => BarViewScreen());

      default:
        return MaterialPageRoute(builder: (context) => BarViewScreen());
    }
  }
}
