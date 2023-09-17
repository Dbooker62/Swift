
// Ingredients
let cookedBrownRice = 8.0 // cups
let beets = 2.0 // cups, grated
let carrots = 2.0 // cups, grated
let almonds = 2.0 // cups, toasted
let spinach = 2.0 // cups, leaves
let tofu = 2.0 // cups, cubed

// Dressing
let nutritionalYeast = 0.5 // cups
let water = 0.33 // cups
let soySauce = 0.33 // cups
let appleCiderVinegar = 0.33 // cups
let garlicCloves = 2.0 // cloves
let veggieOil = 1.5 // cups
let tahiniPaste = 2.0 // tbsp

// Calculate total nutritional content
let totalProtein = (tofu * 20) + (nutritionalYeast * 8) // Protein in grams
let totalFiber = (cookedBrownRice * 3) + (beets * 2) + (carrots * 2) // Fiber in grams
let totalCalories = (totalProtein * 4) + (totalFiber * 2) // Total calories

// Display Ingredients
print("Ingredients for the Glory Bowl:")
print("\(cookedBrownRice) cups Cooked Brown Rice")
print("\(beets) cups beets, grated")
print("\(carrots) cups carrots, grated")
print("\(almonds) cups almonds, toasted")
print("\(spinach) cups spinach leaves")
print("\(tofu) cups tofu, cubed")

// Display Dressing
print("Dressing for the Glory Bowl:")
print("\(nutritionalYeast) cups nutritional yeast")
print("\(water) cups water")
print("\(soySauce) cups soy sauce")
print("\(appleCiderVinegar) cups apple cider vinegar")
print("\(garlicCloves) cloves garlic")
print("\(veggieOil) cups veggie oil")
print("\(tahiniPaste) tbsp tahini paste")

// Display nutritional information and advice
print("\nNutritional Information:")
print("Total Protein: \(totalProtein) grams")
print("Total Fiber: \(totalFiber) grams")
print("Total Calories: \(totalCalories) calories")

// Health-conscious advice
if totalProtein >= 20 && totalFiber >= 10 && totalCalories <= 500 {
    print("\nThis Glory Bowl is a healthy and balanced meal!")
} else {
    print("\nConsider adjusting ingredient quantities for a more balanced meal.")
}
