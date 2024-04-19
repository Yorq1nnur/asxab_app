import 'package:asxab_app/screens/tabs/fasting/count/count_screen.dart';
import 'package:asxab_app/screens/tabs/fasting/fasting_screen.dart';
import 'package:asxab_app/screens/tabs/prayer/prayer_screen.dart';
import 'package:asxab_app/screens/tabs/profile/profile_screen.dart';
import 'package:asxab_app/screens/tabs/tab_box.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.tabBox:
        return navigate(
          const TabBox(),
        );

      case RouteNames.prayerScreen:
        return navigate(
          const PrayerScreen(),
        );

      case RouteNames.fastingScreen:
        {
          return navigate(
            const FastingScreen(),
          );
        }

      case RouteNames.profileScreen:
        return navigate(
          const ProfileScreen(),
        );
      case RouteNames.countScreen:
        return navigate(
          const CountScreen(),
        );

      default:
        return navigate(
          const Scaffold(
            body: Center(
              child: Text("This kind of rout does not exist!"),
            ),
          ),
        );
    }
  }

  static navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

class RouteNames {
  static const String tabBox = "/tab_box";
  static const String prayerScreen = "/prayer_route";
  static const String fastingScreen = "/";
  static const String profileScreen = "/profile_route";
  static const String countScreen = "/count_route";
}
