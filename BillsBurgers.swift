import Foundation

// struct for Burger
struct Burger {
    let name: String
    let price: Double
    let description: String
}

// enumeration for Menu Category
enum MenuCategory {
    case classicBurgers
    case specialtyBurgers
    case sides
}

// Menu Item
struct MenuItem {
    let category: MenuCategory
    let items: [Burger]
}

// Define a function to create menu items
func createMenu() -> [MenuItem] {
    let classicBurgers = MenuItem(
        category: .classicBurgers,
        items: [
            Burger(name: "Classic Cheeseburger", price: 9.99, description: "A timeless classic with cheddar cheese"),
            Burger(name: "Bacon Burger", price: 10.99, description: "Juicy patty with crispy bacon"),
        ]
    )
    
    let specialtyBurgers = MenuItem(
        category: .specialtyBurgers,
        items: [
            Burger(name: "Mushroom Swiss Burger", price: 11.99, description: "Sautéed mushrooms and Swiss cheese"),
            Burger(name: "Spicy Jalapeño Burger", price: 12.99, description: "For the brave, with jalapeños and hot sauce"),
        ]
    )
    
    let sides = MenuItem(
        category: .sides,
        items: [
            Burger(name: "French Fries", price: 3.49, description: "Golden crispy fries"),
            Burger(name: "Onion Rings", price: 4.49, description: "Crunchy onion rings with dipping sauce"),
        ]
    )
    
    return [classicBurgers, specialtyBurgers, sides]
}

// display the menu
func displayMenu(menu: [MenuItem]) {
    for item in menu {
        print("Category: \(item.category)")
        for burger in item.items {
            print("Name: \(burger.name)")
            print("Price: $\(burger.price)")
            print("Description: \(burger.description)")
            print("----")
        }
    }
}


let menu = createMenu()

// Display 
displayMenu(menu: menu)


func orderBurger(menu: [MenuItem], burgerName: String) -> Burger? {
    for item in menu {
        for burger in item.items {
            if burger.name == burgerName {
                return burger
            }
        }
    }
    return nil
}

// Order a burger
if let orderedBurger = orderBurger(menu: menu, burgerName: "Classic Cheeseburger") {
    print("\nYou ordered: \(orderedBurger.name)")
    print("Price: $\(orderedBurger.price)")
    print("Enjoy your meal!")
} else {
    print("\nSorry, we couldn't find that burger on the menu.")
}
