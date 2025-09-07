import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        ),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: Text(
          'PARIPAON',
          style: TextStyle(
            color: Colors.white70,
            shadows: [Shadow(color: Colors.black45, offset: Offset(1, 1))],
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Log in', style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 16),
            TextField_Theme(lable: "Email", rightIcon: null),
            SizedBox(height: 10),
            TextField_Theme(lable: "Password", rightIcon: CupertinoIcons.eye),
          ],
        ),
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
  bool _obscure = true;

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
