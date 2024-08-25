import 'package:flutter/material.dart.';
import 'package:flutter_svg/flutter_svg.dart';

typedef ondrawertab= void Function();

class drawertabes extends StatelessWidget {
  final String image;
  final String text;
  final ondrawertab ontab;

  const drawertabes({Key? key, required this.image, required this.text, required this.ontab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(children: [
          SvgPicture.asset(image),
          SizedBox(width: 8,),
          Text(text,style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Theme.of(context).colorScheme.secondary
          ),)
        ],
        ),
      ),
    );
  }
}
