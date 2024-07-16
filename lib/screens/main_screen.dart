import 'package:cooking_today/screens/favorite_screen.dart';
import 'package:cooking_today/screens/home_screen.dart';
import 'package:cooking_today/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'meal_plan.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTab = 0;
  List screens = [
    HomeScreen(),
    FavoriteScreen(),
    MealPlan(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 0;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: currentTab == 0 ? Colors.blue : Colors.black,
                  ),
                  Text('Home', style: TextStyle(fontSize: 14),),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 1;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                    color: currentTab == 1 ? Colors.blue : Colors.black,
                  ),
                  Text('Favorites', style: TextStyle(fontSize: 14),),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 2;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 2 ? Iconsax.calendar_25 : Iconsax.calendar_2,
                    color: currentTab == 2 ? Colors.blue : Colors.black,),
                  Text('Meal plan', style: TextStyle(fontSize: 14),),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 3;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 3 ? Iconsax.setting_2 : Iconsax.setting4,
                    color: currentTab == 3 ? Colors.blue : Colors.black,),
                  Text('Settings', style: TextStyle(fontSize: 14),),
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
