import 'package:flutter/material.dart';
import 'package:news_app/Modle/catgroiesmodle.dart';

import '../../Modle/catgroiesmodle.dart';
import '../../Modle/catgroiesmodle.dart';
import '../../Modle/catgroiesmodle.dart';

class catgoryitem extends StatelessWidget {
  final catgroiesmodel catgoriesmodel;
  final int index;
  final void Function() onTab;
  const catgoryitem({super.key, required this.catgoriesmodel, required this.index, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: catgoriesmodel.background,
         borderRadius: BorderRadius.only(
             topRight: Radius.circular(25),
             topLeft: Radius.circular(25),
             bottomLeft: index.isEven ? Radius.circular(25):Radius.zero,
             bottomRight: index.isEven ? Radius.zero : Radius.circular(25)
         )
     ),
      child: Column(children: [
        Image.asset(catgoriesmodel.image,height: MediaQuery.of(context).size.height*0.15,fit: BoxFit.fitHeight,),
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
