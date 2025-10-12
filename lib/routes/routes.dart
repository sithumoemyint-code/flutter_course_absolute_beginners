import 'package:flutter/material.dart';
import 'package:my_app/base/bottom_nav_bar.dart' show MyBottomNavBar;
import 'package:my_app/screens/all_tickets.dart' show AllTickets;

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      "/": (context) => const MyBottomNavBar(),
      "/all_tickets": (context) => const AllTickets(),
    };
  }

  static const String home = "/";
  static const String allTickets = "/all_tickets";
}
