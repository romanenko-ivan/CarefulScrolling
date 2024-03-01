import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("First", systemImage: "star")
                }
        }
    }
}

#Preview {
    ContentView()
}

struct MainView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10, pinnedViews: [.sectionFooters]) {
                Section(footer: FooterView()) {
                    ForEach(0...100, id: \.self) { i in
                        Text("\(i)")
                            .font(.title)
                        
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct FooterView: View {
    var body: some View {
        Rectangle()
            .fill(Color.red.opacity(0.5))
            .frame(height: 50)
    }
}
