import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/img/french-toast.jpg', fit: BoxFit.fill,),
          SizedBox(height: 10,),
          Text('Settgins Page', style: TextStyle(fontSize: 32),)
        ],
      ),
    );
  }
}
