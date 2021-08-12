import 'package:flutter/material.dart';
import 'package:socialapp/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'socialapp',
        debugShowCheckedModeBanner: false,
        routes: Routes().routes,
        initialRoute: '/stack',
    );
  }
}