import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(255, 125, 155, 255);
const kSecondaryColor = Color.fromARGB(255, 43, 224, 124);
const kErrorColor = Color.fromARGB(255, 194, 52, 83);
const kLightBackgroundColor = Colors.white;
const kDarkBackgroundColor = Color.fromARGB(255, 11, 11, 11);

const kDefaultPadding = 20.0;

const kOnlineColor = Color.fromARGB(255, 43, 224, 124);
const kIdleColor = Color.fromARGB(255, 224, 176, 43);
const kDoNotDisturbColor = Color.fromARGB(255, 224, 64, 43);

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
