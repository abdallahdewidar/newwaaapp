import 'package:flutter/material.dart';


import '../../Modle/sourses model/Source.dart';

class SourceTabWidget extends StatelessWidget {
  final Source source;
  const SourceTabWidget({super.key,required this.source});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Theme.of(context).colorScheme.primary)

        ),
        child: Text(
            source.name??""
        ),
      ),
    );
  }
}
