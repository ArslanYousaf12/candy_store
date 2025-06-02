import 'package:candy_store/dessert.dart';
import 'package:flutter/material.dart';

class DessertListScreen extends StatelessWidget {
  const DessertListScreen({
    super.key,
    required this.dessert,
    required this.onTapped,
  });

  final List<Dessert> dessert;
  final ValueChanged<Dessert> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dessert List')),
      body: ListView(
        children: [
          for (final dessertItem in dessert)
            ListTile(
              title: Text(dessertItem.name),
              subtitle: Text(dessertItem.description),
              leading: Image.network(
                dessertItem.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              onTap: () => onTapped(dessertItem),
            ),
        ],
      ),
    );
  }
}
