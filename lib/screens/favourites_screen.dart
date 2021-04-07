import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favoutiteMeals;

  FavouritesScreen(this.favoutiteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoutiteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some!!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoutiteMeals[index].id,
            title: favoutiteMeals[index].title,
            imageUrl: favoutiteMeals[index].imageUrl,
            duration: favoutiteMeals[index].duration,
            affordability: favoutiteMeals[index].affordability,
            complexity: favoutiteMeals[index].complexity,
          );
        },
        itemCount: favoutiteMeals.length,
      );
    }
  }
}
