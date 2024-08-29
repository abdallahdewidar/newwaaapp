import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/ui/wdigets/catgory%20item.dart';

import '../../Modle/catgroiesmodle.dart';

class catgriostab extends StatelessWidget {

  const catgriostab({Key? key, }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          Text(" Pick your category of interest " ,style: Theme.of(context).textTheme.headlineMedium,)
          ,SizedBox(height: 26,),
          Expanded(
            flex: 2,
            child: GridView.builder(itemBuilder: (context, index) => catgoryitem(catgoriesmodel:catgroiesmodel.cagtgrylistofmodel[index] )
                ,  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount:catgroiesmodel.cagtgrylistofmodel.length
              ),
          )

        ],
      ),
    );
  }
}
