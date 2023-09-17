import SwiftUI

struct ContentView: View {
    @State private var currentTime = Date()

    var body: some View {
        Text(getFormattedTime())
            .font(.largeTitle)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                    self.currentTime = Date()
                }
            }
    }

    func getFormattedTime() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter.string(from: currentTime)
    }
}


