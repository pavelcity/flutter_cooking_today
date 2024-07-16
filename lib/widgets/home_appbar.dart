import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'What are you\ncooking today',
          style:
          TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.grey[200],
            fixedSize: Size(54, 54),
          ),
          icon: Icon(Iconsax.notification),
        ),
      ],
    );
  }
}