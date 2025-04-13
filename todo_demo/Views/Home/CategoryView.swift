import SwiftUI

struct CategoryView: View {
    let products: [Product]

    var categories: [String] {
        Array(Set(products.map { $0.category }))
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories, id: \.self) { category in
                    Text(category.capitalized)
                        .padding()
                        .background(Color.orange.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
        }
    }
}
