// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components.dart';
import 'package:plant_app/screens/main_menu/components/featured_plants.dart';
import 'package:plant_app/screens/main_menu/components/background.dart';
import 'package:plant_app/screens/main_menu/components/first_column.dart';
import 'package:plant_app/screens/main_menu/components/recomended.dart';
import 'package:plant_app/screens/main_menu/components/search_bar.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: null,
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Background(),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                FirstColumn(),
                SearchBar(),
                Recomended(),
                FeaturedPlants(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBackgroundColor,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kBackgroundColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              label: "Flowers",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              label: "Favorites",
            ),
          ]),
    );
  }
}
