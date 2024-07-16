import 'package:flutter/material.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({super.key});

  @override
  State<MealPlan> createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/img/butter-chicken.jpg', fit: BoxFit.fill,),
          SizedBox(height: 10,),
          Text('Meal Plan', style: TextStyle(fontSize: 32),)
        ],
      ),
    );
  }
}
