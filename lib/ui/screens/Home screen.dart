import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_app/Modle/catgroiesmodle.dart';
import 'package:news_app/ui/customDrawer.dart';
import 'package:news_app/ui/wdigets/catgroies%20tab.dart';
import 'package:news_app/ui/wdigets/settingstab.dart';

import '../wdigets/catgories detils.dart';

class Homescreen extends StatefulWidget {
  static const String routeName="Home screen";
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
 Widget selectedtab=catgriostab(onCategoryClick:selectCategoryItem ,);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage("assets/images/pattern.png"))
      ),
      child: Scaffold(
        drawer: CustomDrawer(tab: selecteddrawertab,),
        appBar: AppBar(
      title: Text("News App"),
        ),
        body: selectedtab,
      ),
    );
  }

  selecteddrawertab(menutab tab){
    Navigator.pop(context);
    switch(tab){

      case menutab.Catogries:{
        selectedtab=catgriostab(onCategoryClick: (String ) {  },);
        print("ssssssssssssssss");

      }


      case menutab.Settings:{
        selectedtab=settingstab();
    }

    print("miiiiiiijbjs");
setState(() {

});
  }
} selectCategoryItem(String categoryId){
   selectedtab = catgroiesdetials(  catgoryid: categoryId,);
   setState(() {

   });
 }
}

