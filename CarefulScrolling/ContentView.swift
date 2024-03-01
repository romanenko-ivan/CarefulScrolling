import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("First", systemImage: "star")
                }
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                LazyVStack(spacing: 10, pinnedViews: [.sectionFooters]) {
                    ForEach(0...100, id: \.self) { i in
                        Text("\(i)")
                            .font(.title)
                        
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            FooterView()
        }
    }
}

struct FooterView: View {
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .frame(height: 50)
    }
}


#Preview {
    MainView()
}
