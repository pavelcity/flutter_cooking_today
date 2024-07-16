import 'package:cooking_today/screens/quick_food_screen.dart';
import 'package:cooking_today/screens/recipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cooking_today/models/food.dart';

class QuickAndFastList extends StatefulWidget {
  const QuickAndFastList({super.key});

  @override
  State<QuickAndFastList> createState() => _QuickAndFastListState();
}

class _QuickAndFastListState extends State<QuickAndFastList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Quick & Fast',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuickFoodScreen()),
              ),
              child: Text('view all'),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              foods.length,
              (index) => GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => RecipeScreen(food: foods[index]),
                    )),
                child: Container(
                  width: 200,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(foods[index].image),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            foods[index].name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Iconsax.flash_1,
                                  size: 18, color: Colors.green[700]),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '${foods[index].cal} Cal',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[700]),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Iconsax.clock,
                                  size: 18, color: Colors.green[700]),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '${foods[index].time} Min',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[700]),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        top: 1,
                        right: 16,
                        child: IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: Size(30, 30),
                          ),
                          iconSize: 20,
                          icon: Icon(Iconsax.heart),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
