class ProductsListItem {
  final int id;
  final String ImagePath;
  final String ProductName;
  final String ProductsPrice;

  ProductsListItem({
    required this.id,
    required this.ImagePath,
    required this.ProductName,
    required this.ProductsPrice,
  });
}

class AppDatabase {
  static List<ProductsListItem> get products{
    return [
      ProductsListItem(
        id: 1001,
        ImagePath: 'assets/images/product_1',
        ProductName: 'virtual reality',
        ProductsPrice: '800R',
      ),
      ProductsListItem(
        id: 1002,
        ImagePath: 'assets/images/product_2',
        ProductName: 'Asus TufGaming corie7',
        ProductsPrice: '900R',
      ),
      ProductsListItem(
        id: 1003,
        ImagePath: 'assets/images/product_3',
        ProductName: 'BMW M3 newest version',
        ProductsPrice: '4000R',
      ),
      ProductsListItem(
        id: 1004,
        ImagePath: 'assets/images/product_4',
        ProductName: 'Anti-scratch, shockproof car tire',
        ProductsPrice: '800R',
      ),
      ProductsListItem(
        id: 1005,
        ImagePath: 'assets/images/product_5',
        ProductName: 'Samsung A12 6.5 inch',
        ProductsPrice: '800R',
      ),
    ];
  }
}
