import 'package:flutter/material.dart';
import 'package:plant_app/components.dart';

class subHeading extends StatelessWidget {
  const subHeading({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.head,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String head;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.025),
      child: Container(
        width: screenWidth,
        height: screenHeight * 0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Text(
              head,
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.04,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.01),
              child: Container(
                width: screenWidth * 0.2,
                height: screenHeight * 0.04,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: kBackgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
