import 'package:flutter/material.dart';
import 'package:plant_app/components.dart';

class imageHeadlineWidget extends StatelessWidget {
  const imageHeadlineWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.name,
    required this.money,
    required this.country,
    required this.image,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String name;
  final String money;
  final String country;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.04,
        bottom: screenHeight * 0.03,
      ),
      child: Container(
        width: screenWidth * 0.4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(-5, 10))
          ],
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(image),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.07,
                  decoration: const BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.015,
                      right: screenWidth * 0.015,
                      top: screenHeight * 0.005,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name.toUpperCase(),
                              style: const TextStyle(
                                color: kTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              money,
                              style: const TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.01),
                          child: Text(
                            country.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.8),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
