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
          headlineMedium: TextStyle(
            fontSize: 28,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Log in', style: Theme.of(context).textTheme.headlineMedium),
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
      ),
    );
  }
}
