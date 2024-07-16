import 'package:cooking_today/screens/recipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cooking_today/models/food.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RecipeScreen(food: food,)
        ),
      ),
      child: SizedBox(
        width: 200,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(food.image), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  food.name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Icon(Iconsax.flash_1, size: 18, color: Colors.green[700]),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '${food.cal} Cal',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Iconsax.clock, size: 18, color: Colors.green[700]),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '${food.time} Min',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.star5,
                      color: Colors.yellow.shade700,
                      size: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${food.rate}/5',
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '(${food.reviews} Reviews)',
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                    ),
                  ],
                ),
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
                icon: food.isLiked
                    ? Icon(
                        Iconsax.heart5,
                        color: Colors.redAccent,
                      )
                    : Icon(Iconsax.heart),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
