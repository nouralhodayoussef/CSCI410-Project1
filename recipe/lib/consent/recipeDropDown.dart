import 'package:flutter/material.dart';
import 'package:recipe/data/data.dart';
import 'package:recipe/data/recipe.dart';

class RecipeDropdownMenu extends StatefulWidget {
  final Function(Recipe) onRecipeSelected;

  const RecipeDropdownMenu({required this.onRecipeSelected, Key? key})
      : super(key: key);

  @override
  State<RecipeDropdownMenu> createState() => _RecipeDropdownMenuState();
}

class _RecipeDropdownMenuState extends State<RecipeDropdownMenu> {
  Recipe? selectedRecipe;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<Recipe>(
      width: 210.0,
      initialSelection: selectedRecipe, // Initially selected recipe
      onSelected: (recipe) {
        setState(() {
          selectedRecipe = recipe;
          widget.onRecipeSelected(recipe as Recipe); // Pass the selected recipe
        });
      },
      dropdownMenuEntries: recipes.map<DropdownMenuEntry<Recipe>>((Recipe recipe) {
        return DropdownMenuEntry(
          value: recipe,
          label: recipe.name, // Recipe name displayed in the dropdown
        );
      }).toList(),
    );
  }
}
