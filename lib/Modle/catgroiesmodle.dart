import 'dart:ui';

import 'package:flutter/material.dart';

  class catgroiesmodel{
  String title;
  String image;
  Color background;
  String id;
  catgroiesmodel({required this.image,required this.background,required this.title,required this.id    });

 static List<catgroiesmodel>cagtgrylistofmodel =[catgroiesmodel(image: "assets/images/sports.png", background: Colors.red, title:"Sports", id: 'sports'
    ),catgroiesmodel(image: "assets/images/Politics.png", background:Color(0xff003E90) , title:"Politics" , id:"politics" ),
   catgroiesmodel(image: "assets/images/health.png", background: Color(0xffED1E79), title: "Health", id: "health  "),
   catgroiesmodel(image: "assets/images/bussines.png", background: Color(0xffCF7E48), title: "business ", id: "business"),
   catgroiesmodel(image: "assets/images/environment.png", background: Color(0xff4882CF), title: "Enviroment", id: "entertainment"),
   catgroiesmodel(image: "assets/images/science.png", background: Color(0xffF2D352), title: "Science", id:"science" )

  ];

}