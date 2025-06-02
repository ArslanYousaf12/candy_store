import 'package:candy_store/dessert.dart';
import 'package:flutter/material.dart';

class DessertDetailScreen extends StatelessWidget {
  const DessertDetailScreen({super.key, required this.dessert});
  final Dessert dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dessert Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Dessert Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Image.network(
              dessert.imageUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              dessert.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              dessert.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
