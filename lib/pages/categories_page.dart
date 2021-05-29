import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_item.dart';

import '../dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diel meal'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (ctx, index) {
            final category = DUMMY_CATEGORIES[index];
            return CategoryItem(
              categoryId: category.id,
              color: category.color,
              title: category.title,
            );
          },
          itemCount: DUMMY_CATEGORIES.length,
        ));
  }
}
