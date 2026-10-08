//
//  Untitled.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//
import Foundation

enum SampleRecipes {

    static let all: [Recipe] = [

        Recipe(
            name: "Shakshuka",
            category: "Breakfast",
            minutes: 25,
            baseServings: 2,
            summary: "Eggs poached in a spiced tomato and pepper sauce.",
            imageName: "shakshuka",
            ingredients: [
                Ingredient(name: "eggs", amount: 4, unit: ""),
                Ingredient(name: "tinned tomatoes", amount: 400, unit: "g"),
                Ingredient(name: "red pepper", amount: 1, unit: ""),
                Ingredient(name: "onion", amount: 1, unit: ""),
                Ingredient(name: "olive oil", amount: 2, unit: "tbsp")
            ],
            steps: [
                MethodStep(text: "Soften the onion and pepper in olive oil.", timerMinutes: 8),
                MethodStep(text: "Add the tomatoes and simmer until thick.", timerMinutes: 10),
                MethodStep(text: "Crack in the eggs, cover and cook until just set.", timerMinutes: 5)
            ]
        ),

        Recipe(
            name: "Salmon Eggs Benedict",
            category: "Breakfast",
            minutes: 20,
            baseServings: 2,
            summary: "Smoked salmon and poached eggs on a toasted muffin.",
            imageName: "salmon-benedict",
            ingredients: [
                Ingredient(name: "English muffins", amount: 2, unit: ""),
                Ingredient(name: "smoked salmon", amount: 100, unit: "g"),
                Ingredient(name: "eggs", amount: 4, unit: ""),
                Ingredient(name: "hollandaise sauce", amount: 4, unit: "tbsp")
            ],
            steps: [
                MethodStep(text: "Split and toast the muffins.", timerMinutes: 3),
                MethodStep(text: "Poach the eggs in barely simmering water.", timerMinutes: 4),
                MethodStep(text: "Stack salmon and eggs on the muffins and spoon over the sauce.", timerMinutes: nil)
            ]
        ),

        Recipe(
            name: "Fluffy Pancakes",
            category: "Breakfast",
            minutes: 20,
            baseServings: 2,
            summary: "Thick, soft pancakes topped with berries and maple syrup.",
            imageName: "pancakes",
            ingredients: [
                Ingredient(name: "plain flour", amount: 150, unit: "g"),
                Ingredient(name: "milk", amount: 200, unit: "ml"),
                Ingredient(name: "egg", amount: 1, unit: ""),
                Ingredient(name: "baking powder", amount: 2, unit: "tsp"),
                Ingredient(name: "mixed berries", amount: 100, unit: "g")
            ],
            steps: [
                MethodStep(text: "Whisk the flour, baking powder, milk and egg into a thick batter.", timerMinutes: nil),
                MethodStep(text: "Cook spoonfuls of batter in a hot pan until bubbles appear, then flip.", timerMinutes: 3),
                MethodStep(text: "Stack and top with berries and syrup.", timerMinutes: nil)
            ]
        ),

        Recipe(
            name: "Salmon Avocado Salad",
            category: "Lunch",
            minutes: 15,
            baseServings: 2,
            summary: "Crisp-skinned salmon over rocket and avocado with a sharp lemon dressing.",
            imageName: "salmon-salad",
            ingredients: [
                Ingredient(name: "salmon fillets", amount: 2, unit: ""),
                Ingredient(name: "avocado", amount: 1, unit: ""),
                Ingredient(name: "rocket", amount: 70, unit: "g"),
                Ingredient(name: "lemon", amount: 1, unit: ""),
                Ingredient(name: "olive oil", amount: 2, unit: "tbsp")
            ],
            steps: [
                MethodStep(text: "Season the salmon and start it skin-side down in a hot pan.", timerMinutes: 6),
                MethodStep(text: "Flip and cook for one more minute.", timerMinutes: 1),
                MethodStep(text: "Toss the rocket and avocado with lemon juice and oil, then top with the salmon.", timerMinutes: nil)
            ]
        ),

        Recipe(
            name: "Chickpea Fajitas",
            category: "Dinner",
            minutes: 25,
            baseServings: 2,
            summary: "Spiced roasted chickpeas in warm tortillas with avocado.",
            imageName: "fajitas",
            ingredients: [
                Ingredient(name: "tinned chickpeas", amount: 400, unit: "g"),
                Ingredient(name: "tortillas", amount: 4, unit: ""),
                Ingredient(name: "red pepper", amount: 1, unit: ""),
                Ingredient(name: "avocado", amount: 1, unit: ""),
                Ingredient(name: "fajita spice", amount: 2, unit: "tsp")
            ],
            steps: [
                MethodStep(text: "Toss the chickpeas and pepper with spice and oil.", timerMinutes: nil),
                MethodStep(text: "Roast until the edges are crisp.", timerMinutes: 18),
                MethodStep(text: "Warm the tortillas and fill with chickpeas and sliced avocado.", timerMinutes: 2)
            ]
        ),

        Recipe(
            name: "Spicy Arrabiata Penne",
            category: "Dinner",
            minutes: 25,
            baseServings: 2,
            summary: "Penne in a garlicky tomato sauce with a chilli kick.",
            imageName: "penne",
            ingredients: [
                Ingredient(name: "penne", amount: 200, unit: "g"),
                Ingredient(name: "tinned tomatoes", amount: 400, unit: "g"),
                Ingredient(name: "garlic cloves", amount: 3, unit: ""),
                Ingredient(name: "chilli flakes", amount: 1, unit: "tsp"),
                Ingredient(name: "olive oil", amount: 2, unit: "tbsp")
            ],
            steps: [
                MethodStep(text: "Boil the penne until al dente.", timerMinutes: 10),
                MethodStep(text: "Fry the garlic and chilli, add the tomatoes and simmer.", timerMinutes: 12),
                MethodStep(text: "Toss the pasta through the sauce and serve.", timerMinutes: nil)
            ]
        ),

        Recipe(
            name: "Veggie Omelette",
            category: "Breakfast",
            minutes: 15,
            baseServings: 2,
            summary: "Fluffy eggs folded around peppers, spinach and cheese.",
            imageName: "omelette",
            ingredients: [
                Ingredient(name: "eggs", amount: 4, unit: ""),
                Ingredient(name: "spinach", amount: 50, unit: "g"),
                Ingredient(name: "red pepper", amount: 1, unit: ""),
                Ingredient(name: "cheddar", amount: 40, unit: "g"),
                Ingredient(name: "butter", amount: 1, unit: "tbsp")
            ],
            steps: [
                MethodStep(text: "Soften the pepper and spinach in butter.", timerMinutes: 4),
                MethodStep(text: "Pour in the beaten eggs and cook until almost set.", timerMinutes: 3),
                MethodStep(text: "Add the cheese, fold and serve.", timerMinutes: nil)
            ]
        ),

        Recipe(
            name: "Creamy Tomato Soup",
            category: "Lunch",
            minutes: 30,
            baseServings: 4,
            summary: "Smooth roasted tomato soup with a swirl of cream.",
            imageName: "tomato-soup",
            ingredients: [
                Ingredient(name: "tinned tomatoes", amount: 800, unit: "g"),
                Ingredient(name: "onion", amount: 1, unit: ""),
                Ingredient(name: "garlic cloves", amount: 2, unit: ""),
                Ingredient(name: "vegetable stock", amount: 500, unit: "ml"),
                Ingredient(name: "cream", amount: 4, unit: "tbsp")
            ],
            steps: [
                MethodStep(text: "Fry the onion and garlic until soft.", timerMinutes: 6),
                MethodStep(text: "Add the tomatoes and stock, then simmer.", timerMinutes: 15),
                MethodStep(text: "Blend until smooth and stir in the cream.", timerMinutes: nil)
            ]
        ),

        Recipe(
            name: "Chicken Stir Fry",
            category: "Dinner",
            minutes: 20,
            baseServings: 2,
            summary: "Quick chicken and vegetables in a savoury soy sauce.",
            imageName: "stir-fry",
            ingredients: [
                Ingredient(name: "chicken breast", amount: 300, unit: "g"),
                Ingredient(name: "broccoli", amount: 150, unit: "g"),
                Ingredient(name: "carrot", amount: 1, unit: ""),
                Ingredient(name: "soy sauce", amount: 3, unit: "tbsp"),
                Ingredient(name: "garlic cloves", amount: 2, unit: "")
            ],
            steps: [
                MethodStep(text: "Slice the chicken and fry until golden.", timerMinutes: 6),
                MethodStep(text: "Add the vegetables and garlic and stir fry.", timerMinutes: 5),
                MethodStep(text: "Pour in the soy sauce and toss well.", timerMinutes: 1)
            ]
        ),

        Recipe(
            name: "Garlic Butter Shrimp",
            category: "Dinner",
            minutes: 15,
            baseServings: 2,
            summary: "Juicy shrimp pan-fried in garlic butter with lemon.",
            imageName: "shrimp",
            ingredients: [
                Ingredient(name: "shrimp", amount: 300, unit: "g"),
                Ingredient(name: "butter", amount: 2, unit: "tbsp"),
                Ingredient(name: "garlic cloves", amount: 4, unit: ""),
                Ingredient(name: "lemon", amount: 1, unit: ""),
                Ingredient(name: "parsley", amount: 1, unit: "tbsp")
            ],
            steps: [
                MethodStep(text: "Melt the butter and fry the garlic.", timerMinutes: 1),
                MethodStep(text: "Add the shrimp and cook until pink.", timerMinutes: 4),
                MethodStep(text: "Squeeze over lemon and sprinkle with parsley.", timerMinutes: nil)
            ]
        )
    ]
}
