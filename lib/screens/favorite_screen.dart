import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/img/beaf-steak.jpg', fit: BoxFit.fill,),
          SizedBox(height: 10,),
          Text('Favorites page', style: TextStyle(fontSize: 32),)
        ],
      ),
    );
  }
}
