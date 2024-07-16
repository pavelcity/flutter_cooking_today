import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FoodCounter extends StatelessWidget {

  final int currentNumber;
  final Function() onAdd;
  final Function() onRemove;

  const FoodCounter({super.key, required this.currentNumber, required this.onAdd, required this.onRemove });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5, color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onRemove,
            icon: Icon(Iconsax.minus),
          ),
          SizedBox(width: 4,),
          Text('$currentNumber', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(width: 4,),
          IconButton(
            onPressed: onAdd,
            icon: Icon(Iconsax.add),
          ),
        ],
      ),
    );
  }
}
