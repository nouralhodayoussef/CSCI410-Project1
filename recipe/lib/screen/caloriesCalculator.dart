import 'package:flutter/material.dart';
import 'package:recipe/consent/appbar.dart';
import 'package:recipe/data/data.dart';
import 'package:recipe/data/recipe.dart';

class CaloriesCalculator extends StatefulWidget {
  const CaloriesCalculator({Key? key}) : super(key: key);

  @override
  State<CaloriesCalculator> createState() => _CaloriesCalculatorState();
}

class _CaloriesCalculatorState extends State<CaloriesCalculator> {
  final List<Recipe> selectedRecipes = [];
  Recipe? selectedRecipe;

  void addRecipe() {
    if (selectedRecipe != null && !selectedRecipes.contains(selectedRecipe)) {
      setState(() {
        selectedRecipes.add(selectedRecipe!);
        selectedRecipe = null; // Reset dropdown after selection
      });
    }
  }

  int calculateTotalCalories() {
    return selectedRecipes.fold(0, (total, recipe) => total + recipe.calories);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Recipes & Calculate Calories:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  DropdownButton<Recipe>(
                    hint: Text('Select a recipe'),
                    value: selectedRecipe,
                    onChanged: (Recipe? value) {
                      setState(() {
                        selectedRecipe = value;
                      });
                    },
                    items:
                        recipes.map<DropdownMenuItem<Recipe>>((Recipe recipe) {
                      return DropdownMenuItem<Recipe>(
                        value: recipe,
                        child: Text(recipe.name),
                      );
                    }).toList(),
                  ),
                  ElevatedButton(
                    onPressed: addRecipe,
                    child: Text('Add Selected Recipe'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: selectedRecipes.length,
                itemBuilder: (context, index) {
                  final recipe = selectedRecipes[index];
                  return ListTile(
                    title: Text(recipe.name),
                    subtitle: Text('${recipe.calories} kcal'),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    final totalCalories = calculateTotalCalories();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Total Calories'),
                        content: Text('$totalCalories kcal'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text('Calculate Total Calories'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
