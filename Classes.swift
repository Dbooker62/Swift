class PlaygroundSelectionApp {
    var selectedModel: String?
    var selectedColor: String?
    var selectedPackage: String?
    var selectedAccessories: [String] = []

    func selectModel() {
        
        selectedModel = "Model A"
    }

    func selectColor() {
        
        selectedColor = "Red"
    }

    func selectPackage() {
        
        selectedPackage = "Deluxe"
    }

    func selectAccessories() {
        
        selectedAccessories = ["Cover", "Swings"]
    }

    func reviewSelections() {
        
        print("You have selected:")
        if let model = selectedModel {
            print("Model: \(model)")
        }
        if let color = selectedColor {
            print("Color: \(color)")
        }
        if let package = selectedPackage {
            print("Package: \(package)")
        }
        if !selectedAccessories.isEmpty {
            print("Accessories: \(selectedAccessories.joined(separator: ", "))")
        }
        print("Please confirm your choices.")
    }

    func confirmSelections() {
        
        print("Your selections are confirmed.")
    }

    func completion() {
        
        print("Thank you for selecting your playground equipment. Your order has been placed.")
    }
}
let playgroundApp = PlaygroundSelectionApp()

playgroundApp.selectModel()
playgroundApp.selectColor()
playgroundApp.selectPackage()
playgroundApp.selectAccessories()
playgroundApp.reviewSelections()
playgroundApp.confirmSelections()
playgroundApp.completion()
