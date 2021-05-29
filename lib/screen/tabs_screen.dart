import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorite',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[selectPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        currentIndex: selectPageIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category), title: Text('Categories')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite), title: Text('Favourites')),
        ],
      ),
    );
  }

  int selectPageIndex = 0;

  void selectPage(int value) {
    setState(() {
      selectPageIndex=value;
    });
  }
}
