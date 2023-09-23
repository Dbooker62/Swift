var itemsAtHome: [String: [String]] = [
    "Garage" = ["Tools", "Bicycles", "Storage Boxes"],
"Garden" = ["Gardening Tools", "Outdoor Furniture", "Plants"]
    ,
    "Desk": ["Laptop", "Notebooks", "Pens"],
]
var itemCategories: [String] = []
for (_, categories) in itemsAtHome {
    itemCategories.append(contentsOf: categories)
}
print("Item Categories at Desk, in the Garage, and in the Garden:")
for category in itemCategories {
    print("- \(category)")
}
