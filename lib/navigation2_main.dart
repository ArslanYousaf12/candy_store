import 'package:candy_store/dessert.dart';
import 'package:flutter/material.dart';

class CandyShopApp extends StatefulWidget {
  const CandyShopApp({super.key});

  @override
  State<CandyShopApp> createState() => _CandyShopAppState();
}

class _CandyShopAppState extends State<CandyShopApp> {
  Dessert? _selectedDessert;
  List<Dessert> _desserts = [
    Dessert(
      name: 'Chocolate Cake',
      description: 'A rich chocolate cake with creamy frosting.',
      imageUrl: 'https://example.com/chocolate_cake.jpg',
    ),
    Dessert(
      name: 'Strawberry Cheesecake',
      description: 'A smooth cheesecake topped with fresh strawberries.',
      imageUrl: 'https://example.com/strawberry_cheesecake.jpg',
    ),
    Dessert(
      name: 'Lemon Tart',
      description: 'A tangy lemon tart with a buttery crust.',
      imageUrl: 'https://example.com/lemon_tart.jpg',
    ),
  ];
  void _selectDessert(Dessert dessert) {
    setState(() {
      _selectedDessert = dessert;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candy Shop',

      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey("DessertPage"),
            child: Scaffold(
              appBar: AppBar(title: const Text('Candy Shop')),
              body: Center(child: const Text('Welcome to the Candy Shop!')),
            ),
          ),
        ],
        onDidRemovePage: (page) => print('Removed page: ${page.key}'),
      ),
    );
  }
}
