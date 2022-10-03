import 'package:flutter/material.dart';

const colorWhite = Colors.white;
const colorBlack = Color.fromRGBO(48, 47, 48, 1.0);
const colorDarkGrey = Color.fromRGBO(178, 178, 178, 1.0);


const String fontFamily = 'Euclid Circular B';

const TextTheme textThemeDefault = TextTheme(
  headline1: TextStyle(
    fontFamily: fontFamily,
    color: colorWhite,
    fontWeight: FontWeight.w700,
    fontSize: 34,
    height: 1.1,
  ),
  headline2: TextStyle(
    fontFamily: fontFamily,
    fontSize: 31,
    color: Colors.black87,
    fontWeight: FontWeight.w700,
    height: 1.05,
  ),
  headline3: TextStyle(
    fontFamily: fontFamily,
    color: colorBlack,
    fontWeight: FontWeight.w700,
    fontSize: 22,
    height: 1.1,
  ),
  headline4: TextStyle(
    fontFamily: fontFamily,
    color: colorBlack,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  ),
  headline5: TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.5,
    fontWeight: FontWeight.w700,
    color: colorDarkGrey,
  ),
  headline6: TextStyle(
    fontFamily: fontFamily,
    color: colorWhite,
    fontWeight: FontWeight.w400,
    fontSize: 17.5,
    height: 1,
  ),
  bodyText1: TextStyle(
      fontFamily: fontFamily,
      color: colorBlack,
      fontSize: 16.5,
      fontWeight: FontWeight.w500,
      height: 1.4),
  bodyText2: TextStyle(
      fontFamily: fontFamily,
      color: colorDarkGrey,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1: TextStyle(
    fontFamily: fontFamily,
    color: colorBlack,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1,
  ),
  subtitle2: TextStyle(
    fontFamily: fontFamily,
    color: colorWhite,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  ),
);