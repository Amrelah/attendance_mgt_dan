import 'package:flutter/material.dart';

List<String> request = [];

Landscape(BuildContext context) {
  AppbarHeight = MediaQuery.of(context).size.height * 0.2;

  if (MediaQuery.of(context).orientation == Orientation.portrait) {
    DanPadding = 20.0;
  } else {
    DanPadding = MediaQuery.of(context).size.width * 0.35;
  }
}

const kProfileNameStyle = TextStyle(
  color: Colors.indigo,
  fontWeight: FontWeight.bold,
  fontSize: 12.0,
);

const kDefaultColor = Color(0xFF349873);

const kHeadingTitleStyle = TextStyle(
  color: Color(0xFF349873), // indigo[900]
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);
const kEnabledBorderColor = Color(0xFF9E9E9E); //grey[500]
const kFocusedBorderSideColor = Color(0xFF1A237E); //indigo[900]

const kForgotPassword = TextStyle(
  color: Color(0xFF349873), //indigo[900]
  fontWeight: FontWeight.bold,
);

const kLoginStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);
const kAccountTextStyle = TextStyle(
  color: Color(0xFF349873),
);

const kSideMenuItemsTextStyle = TextStyle(color: Colors.grey);

const topTitle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0);

const cardTitle =
    TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold);

const icons = SizedBox();

double DanPadding = 20.0;
double AppbarHeight = 0.0;
bool obscureText3 = true;
bool obscureText1 = true;
bool obscureText2 = true;
//
// const kProfileNameStyle = TextStyle(
//   color: Colors.indigo,
//   fontWeight: FontWeight.bold,
//   fontSize: 12.0,
// );
//
// const kHeadingTitleStyle = TextStyle(
//   color: Color(0xFF1A237E), // indigo[900]
//   fontWeight: FontWeight.bold,
//   fontSize: 20.0,
// );
// const kEnabledBorderColor = Color(0xFF9E9E9E); //grey[500]
// const kFocusedBorderSideColor = Color(0xFF1A237E); //indigo[900]
//
// const kForgotPassword = TextStyle(
//   color: Color(0xFF1A237E), //indigo[900]
//   fontWeight: FontWeight.bold,
// );
//
// const kLoginStyle = TextStyle(
//   color: Colors.white,
//   fontWeight: FontWeight.bold,
//   fontSize: 18,
// );
// You can add your own constants below as well
