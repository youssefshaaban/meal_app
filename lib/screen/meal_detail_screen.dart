import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget buildContainer(Widget child, BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: 300,
        height: 150,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final routArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final idMeal = routArg['id'];
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == idMeal);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
            ),
            buildSectionTitle(context, 'ingredients'),
            buildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(selectedMeal.ingredients[index])),
                  ),
                  itemCount: selectedMeal.ingredients.length,
                ),
                context),
            buildSectionTitle(context, 'steps'),
            buildContainer(
                ListView.builder(
                  itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${(index + 1)}'),
                        ),
                        title: Text(
                          selectedMeal.steps[index],
                        ),
                      ),
                      Divider()
                    ],
                  ),
                  itemCount: selectedMeal.steps.length,
                ),
                context)
          ],
        ),
      ),
    );
  }
}
