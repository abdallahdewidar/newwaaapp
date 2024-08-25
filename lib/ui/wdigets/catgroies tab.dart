import 'package:flutter/material.dart';

class catgriostab extends StatelessWidget {
  const catgriostab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          Text(" Pick your category of interest " ,style: Theme.of(context).textTheme.headlineMedium,)
        ],
      ),
    );
  }
}
