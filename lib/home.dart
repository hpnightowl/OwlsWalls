import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owlswall/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Wallpapers",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                 children: [
                   Expanded(
                       child: Column(
                         children: [
                           CustomCard()
                         ],
                       )
                   ),
                   SizedBox(width: 10,),
                   Expanded(
                       child: Column(
                         children: [
                         ],
                       )
                   ),
                 ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
