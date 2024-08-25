import 'package:flutter/material.dart';
import 'package:news_app/ui/wdigets/drawertabs.dart';
typedef onclick=void Function(menutab);

class CustomDrawer extends StatelessWidget {
  onclick tab;
   CustomDrawer({Key? key,required this.tab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            height: 120,
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Text("News App!",style:Theme.of(context).textTheme.headlineLarge ),

          ),SizedBox(height: 16,),
          drawertabes(text:  "Categgories",image: "assets/images/menu.svg",ontab: (){
            tab(menutab.Catogries);

          },),
          drawertabes(text: "Settings",image: "assets/images/settings.svg",ontab: (){
            tab(menutab.Settings);

          }),




        ],
      ),
    );
  }
}
enum menutab{
  Catogries,
  Settings,
}
