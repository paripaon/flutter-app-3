class product {
  final int id;
  final String name;
  final String price;
  final String imagePath;
  final String version;
  final String category;

  product({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.version,
    required this.category,
  });
}

final List<product> products = [
  product(
    id: 1001,
    name: "Virtual Reality",
    price: "6000R",
    imagePath: "product_1.jpg",
    version: "1.4",
    category: "Object",
  ),
  product(
    id: 1002,
    name: "Laptop TUF Gaming",
    price: "8000R",
    imagePath: "product_2.jpg",
    version: "1.1",
    category: "Digital",
  ),
  product(
    id: 1003,
    name: "BMW M3",
    price: "90000R",
    imagePath: "product_3.jpg",
    version: "5.9",
    category: "Car",
  ),
  product(
    id: 1004,
    name: "Anti-scratch tires",
    price: "400R",
    imagePath: "product_4.jpg",
    version: "1",
    category: "Car Tool",
  ),
  product(
    id: 1005,
    name: "SamsungA12 6.5inch",
    price: "5000R",
    imagePath: "product_5.jpg",
    version: "9.1",
    category: "Phone",
  ),
];
