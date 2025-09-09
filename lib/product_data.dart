class Product {
  final int id;
  final String name;
  final String price;
  final String imagePath;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
  });
}

final List<Product> products = [
  Product(
    id: 1001,
    name: "Virtual Reality",
    price: "6000R",
    imagePath: "assets/product_1",
  ),
  Product(
    id: 1002,
    name: "Laptop TUF Gaming cori7",
    price: "8000R",
    imagePath: "assets/product_2",
  ),
  Product(
    id: 1003,
    name: "BMW M3",
    price: "90000R",
    imagePath: "assets/product_3",
  ),
  Product(
    id: 1004,
    name: "Anti-scratch and anti-impact tires",
    price: "400R",
    imagePath: "assets/product_4",
  ),
  Product(
    id: 1005,
    name: "Samsung A12 6.5 inch",
    price: "5000R",
    imagePath: "assets/product_5",
  ),
];