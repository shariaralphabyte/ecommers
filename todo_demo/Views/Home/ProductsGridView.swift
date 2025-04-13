import SwiftUI

struct ProductsGridView: View {
    let products: [Product]
    @State private var showAll = false

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Products")
                    .font(.title2)
                    .bold()
                Spacer()
                Button("See All") {
                    showAll.toggle()
                }
            }
            .padding(.horizontal)

            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(showAll ? products : Array(products.prefix(6))) { product in
                    ProductCard(product: product)
                }
            }
            .padding(.horizontal)
        }
    }
}
