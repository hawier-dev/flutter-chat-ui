import 'package:chat_ui/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kLightBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kLightBackgroundColor,
      centerTitle: false,
      elevation: 0,
      iconTheme: IconThemeData(color: kDarkBackgroundColor),
      titleTextStyle: TextStyle(
        color: Colors.black,
      ),
      toolbarTextStyle: TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      onPrimary: kDarkBackgroundColor,
      secondary: kSecondaryColor,
      surface: Color.fromARGB(255, 235, 235, 235),
      onSecondary: Colors.black,
      onBackground: kDarkBackgroundColor,
      background: kLightBackgroundColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kLightBackgroundColor,
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: kDarkBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kDarkBackgroundColor,
      centerTitle: false,
      elevation: 0,
      iconTheme: IconThemeData(color: kLightBackgroundColor),
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
      toolbarTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: kPrimaryColor,
      onPrimary: kDarkBackgroundColor,
      secondary: kSecondaryColor,
      onSecondary: Colors.black,
      background: kDarkBackgroundColor,
      surface: Color.fromARGB(255, 32, 32, 32),
      onBackground: kLightBackgroundColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kDarkBackgroundColor,
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}
