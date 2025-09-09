import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myaplication1/product_data.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key});

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    final products = AppDatabase.products;
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBarClass(),
      drawer: DrawerOnly(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            FieldText_secondpage(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.fromLTRB(64, 0, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('New products'),
              ),
            ),
            productList(products: products),
          ],
        ),
      ),
    );
  }
}

class productList extends StatelessWidget {
  const productList({super.key, required this.products});

  final List<product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: 300,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          final product = products[index];
          return Product_s(productGet: product);
        },
      ),
    );
  }
}

class Product_s extends StatelessWidget {
  const Product_s({super.key, required this.productGet});

  final product productGet;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              "/third",
              (route) => false,
            );
          },
          child: Container(
            height: 110,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [BoxShadow(blurRadius: 10, color: Color(0x555282FF))],
            ),
            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Image.asset('assets/images/${productGet.imagePath}'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                        child: Text(
                          productGet.name,
                          style: TextStyle(
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.black54,
                                offset: Offset(0, 0),
                              ),
                            ],
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Text(
                          'Price: ${productGet.price}',
                          style: TextStyle(
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.black54,
                                offset: Offset(0, 0),
                              ),
                            ],
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FieldText_secondpage extends StatelessWidget {
  const FieldText_secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 50,
          color: Color.fromARGB(20, 100, 100, 100),
          child: TextField(
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              labelText: "search",
              labelStyle: Theme.of(context).textTheme.bodySmall,
              suffixIcon: Icon(CupertinoIcons.search),
              suffixIconColor: Colors.white38,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide(color: Colors.white54),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            cursorColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class AppBarClass extends StatelessWidget implements PreferredSizeWidget {
  const AppBarClass({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'PARIPAON',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      backgroundColor: Color.fromARGB(200, 90, 90, 90),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 0.2),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white54, width: 0.5),
          ),
        ),
      ),
      actions: [],
    );
  }
}

class DrawerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(250, 90, 90, 90),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                shadows: [Shadow(color: Colors.black, offset: Offset(3, 0.5))],
              ),
            ),
          ),
          Divider(color: Colors.black45),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                shadows: [Shadow(color: Colors.black, offset: Offset(1, 1))],
              ),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/second",
                (route) => false,
              );
            },
          ),
          Divider(color: Colors.black45),
          ListTile(
            title: Text(
              'Login',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                shadows: [Shadow(color: Colors.black, offset: Offset(1, 1))],
              ),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/home",
                (route) => false,
              );
            },
          ),
          Divider(color: Colors.black45),
        ],
      ),
    );
  }
}
