import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:znpsolutionswebpage/mobileView/HomeViewMobile.dart';
import 'package:znpsolutionswebpage/screens/homeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Znp Solutions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "OpenSans",
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
            headline1: GoogleFonts.openSans(fontSize: 72, fontWeight: FontWeight.bold , color: Colors.black),
            headline3: GoogleFonts.openSans(fontSize: 55, fontWeight: FontWeight.w800 , color: Colors.black),
            headline4: GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.normal , color: Colors.black) ,
            headline5: GoogleFonts.openSans(fontSize: 18, fontWeight: FontWeight.w600 , color: Colors.black),
            headline6: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w600 , color: Colors.black),
            button: GoogleFonts.openSans(fontSize: 18, fontWeight: FontWeight.normal , color: Colors.white)
        )
      ),
      home: ResponsiveBuilder(
        builder: (context,sizingInformation){
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return HomeViewMobile();
          }
          return HomeView();
        },
      ),
    );
  }
}
