class product {
  final int id;
  final String name;
  final String price;
  final String imagePath;

  product({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
  });
}

class AppDatabase {
  static List<product> get products {
    return [
      product(
        id: 1001,
        name: "Virtual Reality",
        price: "6000R",
        imagePath: "product_1.jpg",
      ),
      product(
        id: 1002,
        name: "Laptop TUF Gaming",
        price: "8000R",
        imagePath: "product_2.jpg",
      ),
      product(
        id: 1003,
        name: "BMW M3",
        price: "90000R",
        imagePath: "product_3.jpg",
      ),
      product(
        id: 1004,
        name: "Anti-scratch tires",
        price: "400R",
        imagePath: "product_4.jpg",
      ),
      product(
        id: 1005,
        name: "SamsungA12 6.5inch",
        price: "5000R",
        imagePath: "product_5.jpg",
      ),
    ];
  }
}
