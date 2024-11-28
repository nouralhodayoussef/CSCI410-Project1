import 'recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    name: 'Grilled Ribs',
    category: 'Dinner',
    imagePath: 'images/dinner3.jpg',
    preparationTime: 100,
    rating: 4.5,
    ingredients: ['500g ribs', '1 tbsp garlic powder', 'Salt', 'Pepper'],
    preparationSteps: [
      'Marinate ribs with garlic, salt, and pepper.',
      'Preheat the grill to medium-high heat.',
      'Grill ribs for 15 minutes on each side.',
      'Let rest for 5 minutes before serving.'
    ],
    calories: 800, // Added calories
  ),
  Recipe(
    name: 'Pancakes',
    category: 'Breakfast',
    imagePath: 'images/pancake.jpg',
    preparationTime: 20,
    rating: 4.8,
    ingredients: ['1 cup flour', '1 egg', '1 cup milk', '2 tbsp sugar'],
    preparationSteps: [
      'Mix all ingredients into a smooth batter.',
      'Heat a pan over medium heat and grease it lightly.',
      'Pour batter and cook until bubbles form, then flip.',
      'Serve with syrup or toppings of choice.'
    ],
    calories: 350,
  ),
  Recipe(
    name: 'Spaghetti Carbonara',
    category: 'Lunch',
    imagePath: 'images/lunch2.jpg',
    preparationTime: 30,
    rating: 4.7,
    ingredients: [
      '200g spaghetti',
      '100g pancetta',
      '2 eggs',
      '50g grated Parmesan',
      'Salt',
      'Pepper'
    ],
    preparationSteps: [
      'Cook spaghetti according to package instructions.',
      'Fry pancetta until crispy.',
      'Whisk eggs with grated Parmesan, salt, and pepper.',
      'Mix hot pasta with pancetta and egg mixture.',
      'Serve immediately.'
    ],
    calories: 600,
  ),
  Recipe(
    name: 'Veggie Stir Fry',
    category: 'Dinner',
    imagePath: 'images/fast3.jpg',
    preparationTime: 25,
    rating: 4.4,
    ingredients: [
      '1 cup broccoli florets',
      '1 bell pepper, sliced',
      '1 carrot, julienned',
      '2 tbsp soy sauce',
      '1 tbsp sesame oil',
      '1 tsp ginger, minced'
    ],
    preparationSteps: [
      'Heat sesame oil in a wok over medium heat.',
      'Add ginger and sauté until fragrant.',
      'Add vegetables and stir fry for 5-7 minutes.',
      'Pour in soy sauce and cook for another 2 minutes.',
      'Serve hot with rice or noodles.'
    ],
    calories: 200,
  ),
  Recipe(
    name: 'Chocolate Cake',
    category: 'Dessert',
    imagePath: 'images/cake.png',
    preparationTime: 60,
    rating: 4.9,
    ingredients: [
      '1 cup flour',
      '1/2 cup cocoa powder',
      '1 cup sugar',
      '2 eggs',
      '1/2 cup butter, melted',
      '1 tsp baking powder',
      '1/2 cup milk'
    ],
    preparationSteps: [
      'Preheat oven to 180°C (350°F).',
      'Mix all dry ingredients in a bowl.',
      'Add eggs, melted butter, and milk, and whisk to combine.',
      'Pour batter into a greased cake tin.',
      'Bake for 30-35 minutes or until a toothpick comes out clean.',
      'Let cool before serving.'
    ],
    calories: 500,
  ),
  Recipe(
    name: 'Avocado Toast',
    category: 'Breakfast',
    imagePath: 'images/fast1.jpg',
    preparationTime: 10,
    rating: 4.6,
    ingredients: ['2 slices of bread', '1 avocado', 'Salt', 'Pepper', 'Chili flakes'],
    preparationSteps: [
      'Toast bread slices to desired crispiness.',
      'Mash avocado and season with salt and pepper.',
      'Spread mashed avocado onto toast.',
      'Sprinkle with chili flakes for an extra kick.',
      'Serve immediately.'
    ],
    calories: 250,
  ),
  Recipe(
    name: 'Caesar Salad',
    category: 'Lunch',
    imagePath: 'images/caesar.png',
    preparationTime: 15,
    rating: 4.5,
    ingredients: [
      '1 head romaine lettuce',
      '1/2 cup croutons',
      '1/4 cup grated Parmesan',
      '2 tbsp Caesar dressing',
      'Salt',
      'Pepper'
    ],
    preparationSteps: [
      'Wash and chop lettuce.',
      'Toss lettuce with Caesar dressing.',
      'Top with croutons and grated Parmesan.',
      'Season with salt and pepper.',
      'Serve chilled.'
    ],
    calories: 300,
  ),
  Recipe(
    name: 'Chicken Curry',
    category: 'Dinner',
    imagePath: 'images/curry.png',
    preparationTime: 45,
    rating: 4.8,
    ingredients: [
      '500g chicken, cubed',
      '1 onion, diced',
      '2 cloves garlic, minced',
      '1 cup coconut milk',
      '2 tbsp curry powder',
      '1 tbsp vegetable oil'
    ],
    preparationSteps: [
      'Heat oil in a pot and sauté onion and garlic until soft.',
      'Add chicken and cook until browned.',
      'Stir in curry powder and cook for 2 minutes.',
      'Add coconut milk and simmer for 30 minutes.',
      'Serve with rice or naan bread.'
    ],
    calories: 700,
  ),
  Recipe(
    name: 'Berry Smoothie',
    category: 'Breakfast',
    imagePath: 'images/smothie.png',
    preparationTime: 5,
    rating: 4.9,
    ingredients: ['1 cup mixed berries', '1 banana', '1 cup yogurt', '1 tbsp honey'],
    preparationSteps: [
      'Add all ingredients to a blender.',
      'Blend until smooth.',
      'Pour into a glass and serve immediately.'
    ],
    calories: 150,
  ),
  Recipe(
    name: 'Homemade Pizza',
    category: 'Dinner',
    imagePath: 'images/pizza.png',
    preparationTime: 90,
    rating: 4.7,
    ingredients: [
      '2 cups flour',
      '1 tsp yeast',
      '1/2 cup water',
      '1/4 cup tomato sauce',
      '1 cup mozzarella cheese',
      'Toppings of choice'
    ],
    preparationSteps: [
      'Prepare pizza dough by mixing flour, yeast, and water. Let it rise for 1 hour.',
      'Preheat oven to 220°C (430°F).',
      'Roll out dough and spread tomato sauce over it.',
      'Add cheese and desired toppings.',
      'Bake for 15-20 minutes or until crust is golden brown.',
      'Let cool slightly before slicing and serving.'
    ],
    calories: 900,
  ),
];


List<Recipe> getRecipesByCategory(String category) {
  return recipes.where((recipe) => recipe.category == category).toList();
}

