import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layouts/phone.dart';
import 'package:flutter_application_1/Layouts/tablet.dart';
import 'package:flutter_application_1/responsive%20manager/layout_manager.dart';
import 'Layouts/desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: LayoutManager(
        phone: Phone(),
        tablet: Tablet(),
        desktop: Desktop(),
      ),
    );
  }
}
