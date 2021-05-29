import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../screen/categories_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String categoryId;

  CategoryItem({this.title, this.color, this.categoryId});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoriesMealsScreen.routeName,
        arguments: {'id': categoryId, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
