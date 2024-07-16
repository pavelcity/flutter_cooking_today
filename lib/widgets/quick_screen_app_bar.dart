import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/cupertino.dart';


class QuickScreenAppBar extends StatelessWidget {
  const QuickScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey[200],
            fixedSize: Size(54, 54),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
          ),
          color: Colors.black,
          icon: Icon(CupertinoIcons.chevron_back),
        ),
        Spacer(),
        Text('Quick & Fast', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Spacer(),
        IconButton(
          onPressed: () {

          },
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey[200],
            fixedSize: Size(54, 54),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
          ),
          color: Colors.black,
          icon: Icon(Iconsax.notification),
        ),
      ],
    );
  }
}