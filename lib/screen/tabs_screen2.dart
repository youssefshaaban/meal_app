import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabsScreen2State();
}

class _TabsScreen2State extends State<TabsScreen2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CategoriesScreen(),
          FavoritesScreen(),
        ],),
      ),
    );
  }
}
