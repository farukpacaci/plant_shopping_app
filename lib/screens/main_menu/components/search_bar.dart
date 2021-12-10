// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: screenHeight * 0.05),
      child: Container(
        width: screenWidth,
        height: screenHeight * 0.05,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor,
              blurRadius: 30,
              spreadRadius: 1,
              offset: Offset(-1, -1),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.05,
            right: screenWidth * 0.025,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(color: kPrimaryColor),
              suffixIcon: Padding(
                padding: EdgeInsets.only(
                  bottom: screenHeight * 0.01,
                  top: screenHeight * 0.01,
                ),
                child: SvgPicture.asset(
                  "assets/icons/search.svg",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
