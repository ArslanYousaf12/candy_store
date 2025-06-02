import 'package:candy_store/dessert.dart';
import 'package:candy_store/dessert_detail_screen.dart';
import 'package:candy_store/dessert_list_screen.dart';
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
      imageUrl:
          'https://images.immediate.co.uk/production/volatile/sites/30/2022/05/Chocolate-sandwich-cupcakes-4b30ada.jpg?quality=90&resize=556,505',
    ),
    Dessert(
      name: 'Strawberry Cheesecake',
      description: 'A smooth cheesecake topped with fresh strawberries.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTjX70ZjPUAt_m3_vyAiFIriIgB9YkEdQVRA&s',
    ),
    Dessert(
      name: 'Lemon Tart',
      description: 'A tangy lemon tart with a buttery crust.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHwbHey4EhZyNflg6Y4zuhJW0eCpEzKaxy8w&s',
    ),
  ];
  void _handleDessertTap(Dessert dessert) {
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
            child: DessertListScreen(
              dessert: _desserts,
              onTapped: _handleDessertTap,
            ),
          ),
          if (_selectedDessert != null)
            MaterialPage(
              key: ValueKey("DessertDetailPage"),
              child: DessertDetailScreen(dessert: _selectedDessert!),
            ),
        ],
        onDidRemovePage: (page) => print('Removed page: ${page.key}'),
      ),
    );
  }
}
