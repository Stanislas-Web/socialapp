import 'package:flutter/material.dart';
import 'package:socialapp/routeStack.dart';
import 'package:socialapp/Screens/home/home.dart';


class Routes {
  Map<String, WidgetBuilder> routes = {
    '/home': (context) => Home(),
    '/stack': (context) => RouteStack(),
  };
}
