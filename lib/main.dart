import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolyo/Screens/Resume/resume_screen.dart';
import 'Screens/AboutMe/about_me_screen.dart';
import 'Screens/Drawer/mydrawer.dart';
import 'Screens/Projects/projects_screen.dart';
import 'Widgets/app_bar.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'RasitYilmaz Portfolio',
      theme: ThemeData(
          fontFamily: 'Baloo',
          textTheme: const TextTheme(
              headline6: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              bodyText1: TextStyle(fontSize: 13, color: Colors.white60),
              bodyText2: TextStyle(fontSize: 14, color: Colors.white),
              headline3: TextStyle(
                  fontSize: 26,
                  decoration: TextDecoration.underline,
                  color: Colors.indigoAccent),
              headline2: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              labelMedium: TextStyle(fontSize: 18, color: Colors.white))),
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final PageController pageController = PageController(initialPage: 0);

  List<Widget> screens(BuildContext context) {
    return [
      const AboutMePage(),
      ProjectPage(),
      const ResumePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kIsWeb ? Colors.red : Colors.transparent,
        body: Row(
          children: [
            const Expanded(flex: 25, child: MyDrawer()),
            Expanded(
                flex: 75,
                child: Scaffold(
                    backgroundColor: const Color(0xFF2a454b),
                    appBar:
                        MyAppBar(pageController: pageController).build(context),
                    body: PageView.builder(
                        itemCount: screens(context).length,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        controller: pageController,
                        itemBuilder: (context, pageIndex) {
                          return screens(context)[pageIndex];
                        })))
          ],
        ));
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
