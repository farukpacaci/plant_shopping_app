// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:plant_app/components.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Container(
        width: screenWidth,
        height: screenHeight * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hi Faruk!",
              style: TextStyle(
                color: kBackgroundColor,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.08,
              ),
            ),
            Container(
              width: screenWidth * 0.2,
              height: screenWidth * 0.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/logo.png"))),
            ),
          ],
        ),
      ),
    );
  }
}
