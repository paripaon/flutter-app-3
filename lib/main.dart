import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myaplication1/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            shadows: [Shadow(offset: Offset(2, 3))],
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            shadows: [Shadow(offset: Offset(2, 3))],
          ),
          bodySmall: TextStyle(fontSize: 13, color: Colors.white38),
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.white,
            shadows: [Shadow(offset: Offset(2, 1.5))],
          ),
            bodyLarge: TextStyle(fontSize: 15, color: Color.fromARGB(180, 10, 10, 10)),
        ),
      ),
      home: const MyHomePage(),
      routes: {
        "/home": (context) => const MyHomePage(),
        "/second": (context) => const MySecondPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBarClass(),
      drawer: DrawerOnly(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Log in', style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 16),
            TextField_Theme(lable: "Email", rightIcon: null),
            SizedBox(height: 10),
            TextField_Theme(lable: "Password", rightIcon: CupertinoIcons.eye),
            SizedBox(height: 4),
            SizedBox(
              child: TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Send', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
          Divider(color: Colors.black45,),
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
              Navigator.pushNamedAndRemoveUntil(context, "/second", (route) => false);
            },
          ),
          Divider(color: Colors.black45,),
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
              Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
            },
          ),
          Divider(color: Colors.black45,),
        ],
      ),
    );
  }
}

class TextField_Theme extends StatefulWidget {
  final String lable;
  final rightIcon;

  const TextField_Theme({
    super.key,
    required this.lable,
    required this.rightIcon,
  });

  @override
  State<TextField_Theme> createState() => _TextField_ThemeState();
}

class _TextField_ThemeState extends State<TextField_Theme> {
  bool _obscure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      color: Color.fromARGB(20, 100, 100, 100),
      child: TextField(
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: InputDecoration(
          labelText: widget.lable,
          labelStyle: Theme.of(context).textTheme.bodySmall,
          suffixIcon: widget.rightIcon != null
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon: Icon(
                    _obscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                  ),
                )
              : null,
          suffixIconColor: Colors.white38,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.white54),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        obscureText: _obscure,
        cursorColor: Colors.white,
      ),
    );
  }
}
