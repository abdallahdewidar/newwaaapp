import 'package:flutter/material.dart';
import 'package:news_app/Modle/catgroiesmodle.dart';

import '../../Modle/catgroiesmodle.dart';
import '../../Modle/catgroiesmodle.dart';
import '../../Modle/catgroiesmodle.dart';

class catgoryitem extends StatelessWidget {
  final catgroiesmodel catgoriesmodel;
  const catgoryitem({super.key, required this.catgoriesmodel});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: catgoriesmodel.background
     ),
      child: Column(children: [
        Image.asset(catgoriesmodel.image),
        SizedBox(height: 10,),
        Text(catgoriesmodel.title,style: TextStyle(
          fontWeight: FontWeight.w400
              ,fontSize: 22

        ),),


      ],

      ),
    );
  }
}
