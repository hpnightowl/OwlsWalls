import 'dart:math';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  static double getrandomesizes(){
    final double owl = Random().nextInt(250)/100;
    return owl < 1.2 ? getrandomesizes() : owl;
  }

  final double owl = getrandomesizes();
  final String image;
  CustomCard({this.image = 'assets/images/owlsfav1.png'});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:1/owl,
      child:
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage(this.image)
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}
