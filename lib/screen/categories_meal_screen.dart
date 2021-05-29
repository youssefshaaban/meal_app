import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

import '../widgets/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  CategoriesMealsScreen();

  @override
  Widget build(BuildContext context) {
    final routesArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryName = routesArg['title'];
    final categoryId = routesArg['id'];
    final categoriesMeal = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryName'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: categoriesMeal[index].id,
              title: categoriesMeal[index].title,
              imageUrl: categoriesMeal[index].imageUrl,
              duration: categoriesMeal[index].duration,
              complexity: categoriesMeal[index].complexity,
              affordability: categoriesMeal[index].affordability,
            );
          },
          itemCount: categoriesMeal.length,
        ),
      ),
    );
  }
}
