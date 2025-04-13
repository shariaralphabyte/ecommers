import SwiftUI

struct ContentView: View {
    @StateObject var apiService = APIService()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                DemoSlideView()

                Text("Trending")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(apiService.products.prefix(5)) { product in
                            TrendingCard(product: product)
                        }
                    }
                    .padding(.horizontal)
                }

                Text("Categories")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)

                CategoryView(products: apiService.products)

                ProductsGridView(products: apiService.products)
            }
        }
        .onAppear {
            apiService.fetchProducts()
        }
    }
}
