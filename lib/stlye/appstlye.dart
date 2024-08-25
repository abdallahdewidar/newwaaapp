import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Appstlye {
  static  Color lihtprimarycolor=Color(0xff39A552);
  static Color textblackcolor=Color(0xff303030);
  static Color textcatgoriescolor=Color(0xff4F5A69);
  

static ThemeData lighttheme= ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: textcatgoriescolor
      ),
      headlineLarge: TextStyle(
        color:Colors.white,
        fontSize: 24,
        fontWeight:FontWeight.w700



      )
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: lihtprimarycolor,
      secondary: textblackcolor,
      primary: lihtprimarycolor,),

  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: lihtprimarycolor,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 22  ,
      color: Colors.white
    ),shape:  RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft:Radius.circular(50),
      bottomRight: Radius.circular(50)
    )
  )

  ),


);

}