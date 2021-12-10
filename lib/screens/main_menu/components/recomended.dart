// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/components.dart';
import 'package:plant_app/screens/detailed_page/detailed_page.dart';
import 'package:plant_app/screens/main_menu/components/widgets/recomended_widget.dart';
import 'package:plant_app/screens/main_menu/components/widgets/subheading.dart';

class Recomended extends StatelessWidget {
  const Recomended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: screenHeight * 0.05,
      ),
      child: Column(
        children: [
          subHeading(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            head: "Recomended",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                imageHeadlineWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  country: "Russia",
                  image: "assets/images/image_1.png",
                  money: "\$400",
                  name: "Samantha",
                ),
                imageHeadlineWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  name: "angelica",
                  money: "\$540",
                  country: "russia",
                  image: "assets/images/image_2.png",
                ),
                imageHeadlineWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    name: "Samantha",
                    money: "\$440",
                    country: "russia",
                    image: "assets/images/image_3.png")
              ],
            ),
          )
        ],
      ),
    );
  }
}
