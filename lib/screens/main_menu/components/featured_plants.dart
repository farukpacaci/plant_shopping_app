// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/components.dart';
import 'package:plant_app/screens/detailed_page/detailed_page.dart';
import 'package:plant_app/screens/main_menu/components/widgets/featured_widget.dart';
import 'package:plant_app/screens/main_menu/components/widgets/featured_widget_resize.dart';
import 'package:plant_app/screens/main_menu/components/widgets/subheading.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          subHeading(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              head: "Featured Plants"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                featuredWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  name: "Cactus".toUpperCase(),
                  money: "\$200",
                  country: "chile".toUpperCase(),
                  image: "assets/images/bottom_img_1.png",
                ),
                featuredWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  name: "cactus",
                  money: "\$400",
                  country: "chile",
                  image: "assets/images/bottom_img_2.png",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedPage(),
                        ));
                  },
                  child: featuredWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    name: "angelica",
                    money: "\$440",
                    country: "russia",
                    image: "assets/images/img_resized.png",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
