import 'package:flutter/material.dart';

class MyTheme {
  static Color Wihte = Color(0xffFFFFFF);
  static Color primarylight = Color(0xffB7935F);
  static Color primarydark = Color(0xff141A2E);
  static Color black = Color(0xff000000);
  static Color yellow = Color(0xffFACC1D);
  static ThemeData lighttheme = ThemeData(
      textTheme: TextTheme(
        headline1: TextStyle(
            color: MyTheme.black, fontWeight: FontWeight.bold, fontSize: 30),
        bodyText1: TextStyle(
            color: MyTheme.black, fontWeight: FontWeight.w600, fontSize: 25),
        bodyText2: TextStyle(
            color: MyTheme.black, fontWeight: FontWeight.normal, fontSize: 20),
        headline2: TextStyle(
            color: MyTheme.Wihte, fontWeight: FontWeight.normal, fontSize: 20),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: MyTheme.black,
        unselectedItemColor: MyTheme.Wihte,
      ),
      iconTheme: IconThemeData(
        size: 40,
        color: MyTheme.black,
      ),
      primaryColor: primarylight);
  static ThemeData darktheme = ThemeData(
      textTheme: TextTheme(
        headline1: TextStyle(
            color: MyTheme.Wihte, fontWeight: FontWeight.bold, fontSize: 30),
        bodyText1: TextStyle(
            color: MyTheme.Wihte, fontWeight: FontWeight.w600, fontSize: 25),
        bodyText2: TextStyle(
            color: MyTheme.yellow, fontWeight: FontWeight.normal, fontSize: 20),
        headline2: TextStyle(
            color: MyTheme.black, fontWeight: FontWeight.normal, fontSize: 20),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: MyTheme.yellow,
        unselectedItemColor: MyTheme.Wihte,
      ),
      iconTheme: IconThemeData(
        size: 40,
        color: MyTheme.yellow,
      ),
      primaryColor: primarydark);
}
