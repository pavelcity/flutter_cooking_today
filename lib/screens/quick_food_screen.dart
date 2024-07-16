import 'package:cooking_today/models/food.dart';
import 'package:cooking_today/widgets/food_card.dart';
import 'package:cooking_today/widgets/quick_screen_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class QuickFoodScreen extends StatefulWidget {
  const QuickFoodScreen({super.key});

  @override
  State<QuickFoodScreen> createState() => _QuickFoodScreenState();
}

class _QuickFoodScreenState extends State<QuickFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuickScreenAppBar(),
                SizedBox(height: 30,),
                GridView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) => FoodCard(
                      food: foods[index],
                    ),
                  itemCount: foods.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
