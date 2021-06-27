import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';

class Wallpapers extends StatefulWidget {

  @override
  _WallpapersState createState() => _WallpapersState();
}

class _WallpapersState extends State<Wallpapers> {
  List<Widget> column1=[],column2=[];

  void wallpaperlisting() {
    for (int i = 1; i <= 4; i++) {
      i.isEven
          ? column2.add(
          CustomCard(image: 'assets/images/owlsfav${i.toString()}.png',))
          : column1.add(
          CustomCard(image: 'assets/images/owlsfav${i.toString()}.png',));
    }
  }
  @override
  void initState(){
    wallpaperlisting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: column1
            )
        ),
        SizedBox(width: 10,),
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
              children: column2
            )
        ),
      ],
    );
  }
}

