import SwiftUI

struct DemoSlideView: View {
    var body: some View {
        TabView {
            ForEach(1...3, id: \.self) { index in
                Color.blue
                    .overlay(Text("Demo Slide \(index)").foregroundColor(.white).bold())
                    .frame(height: 200)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 200)
    }
}
