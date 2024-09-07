import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/ui/wdigets/catgory%20item.dart';
import '../../Modle/catgroiesmodle.dart';

import '../../Modle/catgroiesmodle.dart';

class catgriostab extends StatelessWidget {
  void Function(String) onCategoryClick;
   catgriostab({Key? key,required this.onCategoryClick }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left:35,
          top:35,right: 35,
      ),
      child: Column(
        children: [
          Text(" Pick your category of interest " ,style: Theme.of(context).textTheme.headlineMedium,)
          ,SizedBox(height: 26,),
          Expanded(

            child:GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  childAspectRatio: 1/1.3
              ),
              itemBuilder: (context, index) => catgoryitem(
                onTab: (){
                  onCategoryClick(catgroiesmodel.cagtgrylistofmodel[index].id);
                }, catgoriesmodel: catgroiesmodel.cagtgrylistofmodel[index],index: index,
                 ),
              itemCount: catgroiesmodel.cagtgrylistofmodel.length,
            ),

          )],
      ),
    );
  }
}
