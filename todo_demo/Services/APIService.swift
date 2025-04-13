import Foundation

class APIService: ObservableObject {
    @Published var products: [Product] = []

    func fetchProducts() {
        guard let url = URL(string: "https://fakestoreapi.com/products") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            do {
                let decodedData = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    self.products = decodedData
                }
            } catch {
                print("Decoding error: \(error)")
            }
        }.resume()
    }
}
