import 'package:flutter/material.dart';
import 'package:news_app/apis/Api%20manager.dart';
import 'package:news_app/ui/wdigets/sourcetab.dart';

import '../../Modle/sourses model/Source.dart';

class catgroiesdetials extends StatefulWidget {
    String catgoryid;
   catgroiesdetials({Key? key,required this.catgoryid}) : super(key: key);

  @override
  State<catgroiesdetials> createState() => _catgroiesdetialsState();
}

class _catgroiesdetialsState extends State<catgroiesdetials> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: Apimanager.getsourses(widget.catgoryid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          }
          if (snapshot.hasError || snapshot.data?.status == "error") {
            return Column(
              children: [
                Text(snapshot.data?.message ?? snapshot.error.toString()),
                ElevatedButton(onPressed: () {
                  setState(() {

                  });
                }, child: Text("Try Again"))
              ],
            );
          }
          List<Source> sources = snapshot.data?
          return DefaultTabController(
            length: sources.length,
            child: Column(
              children: [
                TabBar(
                    padding: EdgeInsets.all(16),
                    tabAlignment: TabAlignment.start,
                    labelColor: Colors.white,
                    dividerHeight: 0,
                    unselectedLabelColor: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    isScrollable: true,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Theme
                            .of(context)
                            .colorScheme
                            .primary),
                        color: Theme
                            .of(context)
                            .colorScheme
                            .primary
                    ),
                    tabs: sources.map((source) =>
                        SourceTabWidget(source: source,)).toList()
                ),
              ],
            ),
          );
        },
    );

  }
}
