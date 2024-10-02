import 'package:flutter/material.dart';
import 'dummy_menu.dart'; // Import the dummy menu data

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $username'),
      ),
      body: ListView.builder(
        itemCount: foodMenuList.length,
        itemBuilder: (context, index) {
          final foodItem = foodMenuList[index];
          return Card(
            child: ListTile(
              leading: Image.asset(foodItem.imageAsset),
              title: Text(foodItem.name),
              subtitle: Text(foodItem.description),
              trailing: Text(foodItem.price),
            ),
          );
        },
      ),
    );
  }
}