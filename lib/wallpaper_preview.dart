import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WallpaperPreview extends StatelessWidget {
  final String image;
  WallpaperPreview({this.image = 'assets/images/owlsfav1.png'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(this.image)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: EdgeInsets.fromLTRB(5, 50, 20, 0),
                child: Icon(Icons.arrow_back,size: 30,color: Colors.grey[500],),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                    child: Icon(Icons.info_outline,size: 40,color: Colors.grey[500],),
                ),
                Text('Info',style: TextStyle(fontSize: 20,color: Colors.grey[500],),),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.file_download,size: 40,color: Colors.grey[500],),
                ),
                Text('Download',style: TextStyle(fontSize: 20,color: Colors.grey[500]),),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.check_circle,size: 40,color: Colors.grey[500],),
                ),
                Text('Apply',style: TextStyle(fontSize: 20,color: Colors.grey[500],),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
