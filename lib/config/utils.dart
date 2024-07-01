import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const grey = Color(0XFFE3DBDB);
const orange = Color(0XFFFEAC02);
const orangeFonce = Color(0XFFD50200);
const orangeFonce2 = Color(0XFFED4B00);
const rougeBordeau = Color.fromRGBO(79, 16, 0, 1);
final appBgGradient = LinearGradient(colors: [
  grey,
  grey.withOpacity(0.2),
], begin: Alignment.topLeft, end: Alignment.bottomRight);

const appGradient = LinearGradient(
    colors: [orangeFonce2, orange],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);
const title1 = TextStyle(
    fontSize: 20, fontFamily: 'sans-serif', fontWeight: FontWeight.bold);
const body1 =
    TextStyle(fontSize: 15, fontFamily: 'sans-serif', color: rougeBordeau);
final theme =
    ThemeData().copyWith(textTheme: GoogleFonts.robotoCondensedTextTheme());

Widget addVerticalSpace(double num) {
  return SizedBox(
    height: num,
  );
}

Widget addHorizontalSpace(double num) {
  return SizedBox(
    width: num,
  );
}
