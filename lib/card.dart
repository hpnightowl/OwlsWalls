import 'dart:math';

import 'package:flutter/material.dart';
import 'package:owlswall/wallpaper_preview.dart';

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
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> WallpaperPreview(image: this.image,))),
      child: AspectRatio(
        aspectRatio:1/owl,
        child:
        Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(this.image)
              ),
              color: Colors.black,
              borderRadius: BorderRadius.circular(8)
          ),
        ),
      ),
    );
  }
}
