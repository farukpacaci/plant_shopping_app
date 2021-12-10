import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components.dart';
import 'package:plant_app/screens/main_menu/main_menu.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              left: screenWidth * 0.05,
              height: screenHeight * 0.15,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainMenu(),
                        ));
                  },
                  child: SvgPicture.asset("assets/icons/back_arrow.svg")),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: screenHeight * 0.8,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: screenHeight * 0.2),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: screenWidth * 0.15,
                                    height: screenWidth * 0.15,
                                    decoration: BoxDecoration(
                                        color: kBackgroundColor,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: kPrimaryColor,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                          ),
                                        ]),
                                  ),
                                  SvgPicture.asset("assets/icons/sun.svg"),
                                ],
                              ),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: screenHeight * 0.08),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.15,
                                      height: screenWidth * 0.15,
                                      decoration: BoxDecoration(
                                          color: kBackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: kPrimaryColor,
                                              blurRadius: 10,
                                              spreadRadius: 1,
                                            )
                                          ]),
                                    ),
                                    SvgPicture.asset("assets/icons/icon_2.svg"),
                                  ],
                                )),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: screenHeight * 0.08),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: screenWidth * 0.15,
                                    height: screenWidth * 0.15,
                                    decoration: BoxDecoration(
                                        color: kBackgroundColor,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: kPrimaryColor,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                          )
                                        ]),
                                  ),
                                  SvgPicture.asset("assets/icons/icon_3.svg"),
                                ],
                              ),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: screenHeight * 0.08),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.15,
                                      height: screenWidth * 0.15,
                                      decoration: BoxDecoration(
                                        color: kBackgroundColor,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: kPrimaryColor,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SvgPicture.asset("assets/icons/icon_4.svg"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 100,
                        height: screenHeight * 0.8,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/img_detailed.png"),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            topLeft: Radius.circular(100),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.02,
                    right: screenWidth * 0.02,
                  ),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight * 0.12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Angelica",
                              style: TextStyle(
                                fontSize: screenWidth * 0.1,
                                color: kTextColor,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: screenHeight * 0.01),
                              child: Text(
                                "\$440",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: screenWidth * 0.07),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Russia",
                          style: TextStyle(
                            fontSize: screenWidth * 0.08,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25))),
                          child: const Center(
                            child: Text("Buy Now",
                                style: TextStyle(
                                  color: kBackgroundColor,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: const Center(
                            child: Text(
                              "Description",
                              style: TextStyle(
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              right: screenWidth * 0.05,
              height: screenHeight * 0.15,
              child: SvgPicture.asset(
                "assets/icons/more.svg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
