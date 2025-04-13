import SwiftUI

struct ProductCard: View {
    let product: Product

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable()
            } placeholder: {
                Color.gray.opacity(0.2)
            }
            .frame(height: 120)
            .cornerRadius(10)

            Text(product.title)
                .font(.caption)
                .lineLimit(2)

            Text("$\(product.price, specifier: "%.2f")")
                .bold()
                .font(.footnote)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
