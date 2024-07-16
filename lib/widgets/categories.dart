import 'package:flutter/material.dart';
import 'package:cooking_today/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.currentCat,
  });

  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
              (index) => Container(
            decoration: BoxDecoration(
              color: currentCat == categories[index] ? Colors.green[200] : Colors.grey[200],
              borderRadius: BorderRadius.circular(18),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            margin: EdgeInsets.only(right: 12),
            child: Text(
              categories[index],
              style: TextStyle(
                fontSize: 18,
                color: currentCat == categories[index] ? Colors.green[900] : Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
