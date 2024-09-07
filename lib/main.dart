import 'package:flutter/material.dart';
import 'package:news_app/stlye/appstlye.dart';
import 'package:news_app/ui/screens/Home%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Appstlye.lighttheme,
      debugShowCheckedModeBanner: false ,
      themeMode: ThemeMode.light,
      routes:{
        Homescreen.routeName:(_)=>Homescreen()
    }
      ,
      initialRoute: Homescreen.routeName,

    );
  }
}




