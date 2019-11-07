import 'package:flutter/material.dart';

import '../data/dummy-data.dart';

class MealDetailScreen extends StatelessWidget {

  static const routeName = '/meal-detail';

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          text,
          style: Theme.of(context).textTheme.title,
        ),
      );
  }

  Widget _buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _buildSectionTitle(context, 'Ingredients'),
            _buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) {
                  String ingredient = selectedMeal.ingredients[index];
                  return Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10
                      ),
                      child: Text(ingredient)
                    ),
                  );
                },
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            _buildSectionTitle(context, 'Steps'),
            _buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) {
                  String step = selectedMeal.steps[index];
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${index + 1}'),
                        ),
                        title: Text(step),
                      ),
                      Divider()
                    ],
                  );
                },
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}