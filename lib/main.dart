import 'package:flutter/material.dart';
import 'package:meal_app/pages/categories_page.dart';
// import 'package:meal_app/screen/categories_meal_screen.dart';
// import 'package:meal_app/screen/meal_detail_screen.dart';
// import 'package:meal_app/screen/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeailMeals',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,

        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            subtitle1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold)),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => TabsScreen(),
      //   CategoriesMealsScreen.routeName: (context) => CategoriesMealsScreen(),
      //   MealDetailScreen.routeName: (context) => MealDetailScreen()
      // },
      home: CategoriesPage(),
    );
  }
}
