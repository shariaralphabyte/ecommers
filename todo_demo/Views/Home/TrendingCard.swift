import SwiftUI

struct TrendingCard: View {
    let product: Product

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable()
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(width: 120, height: 120)
            .cornerRadius(10)

            Text(product.title)
                .font(.caption)
                .lineLimit(2)
        }
        .frame(width: 120)
    }
}
