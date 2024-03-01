import SwiftUI

struct ContentView: View {
    private let footerHeight: CGFloat = 50
    
    var body: some View {
        TabView {
            ScrollView {
                LazyVStack {
                    ForEach(0...100, id: \.self) { i in
                        Text("\(i)")
                            .font(.title)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .tabItem {
                Label("First", systemImage: "star")
            }
            .safeAreaInset(edge: .bottom) {
                Color.red
                    .frame(height: footerHeight)
                    .opacity(0.8)
            }
        }
    }
}

#Preview {
    ContentView()
}
