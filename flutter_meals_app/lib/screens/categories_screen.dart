import 'package:flutter/material.dart';
import 'package:flutter_meals_app/widgets/category_item.dart';

import '../data/dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
          .map((c) => CategoryItem(
            c.id,
            c.title,
            c.color
          )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
      ),
    );
  }
}
