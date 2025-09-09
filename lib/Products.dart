import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myaplication1/product_data.dart';

class MythirdPage extends StatefulWidget {
  const MythirdPage({super.key});

  @override
  State<MythirdPage> createState() => _MythirdPageState();
}

class _MythirdPageState extends State<MythirdPage> {
  @override
  Widget build(BuildContext context) {
    final products = AppDatabase.products;
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBarClass(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 8),
              Text(
                'Virtual Reality',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 390,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset('assets/images/product_1.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 8),
                      child: Text('Objects'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.arrow_down_to_line,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                width: 400,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Price : 500R',
                        style: TextStyle(
                          color: Colors.black,
                          shadows: [
                            Shadow(color: Colors.white54, offset: Offset(1, 1)),
                          ],
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Vertion 1.4',
                        style: TextStyle(
                          color: Colors.black,
                          shadows: [
                            Shadow(color: Colors.white54, offset: Offset(1, 1)),
                          ],
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Container(
                height: 300,
                width: 395,
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                    child: Text('Features:',
                      style: TextStyle(
                        color: Colors.black,
                        shadows: [
                          Shadow(color: Colors.white54, offset: Offset(1, 0)),
                        ],
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                    child: Text(
                      'We would like to thank maomao90 for his great coordination.Alexdat2000 for Russian translation.Um_nik, jqdai0815 and SSerxhs for red-black testing.A_G, -skyline- and __baozii__ for red testing.fishy15, oolimry, Boboge, nanani, Retired_shstyle and Tobo for orange testing.qsmcgogo and Zhi_Sheng for purple testing.goddddgg for blue testing.jellybean259 for green testing.akqxolotl for grey testing.MikeMirzayanov and KAN for the great platforms.',
                      style: TextStyle(
                      color: Colors.black,
                      shadows: [
                        Shadow(color: Colors.white54, offset: Offset(0, 0)),
                      ],
                      fontSize: 14,
                    ),),
                ),
              ),
            ],
          ),
        )
        ],
      ),
    ),)
    ,
    );
  }
}

class AppBarClass extends StatelessWidget implements PreferredSizeWidget {
  const AppBarClass({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Color heartColor = Colors.white;
    return AppBar(
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
          padding: const EdgeInsets.all(8),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/second",
                    (route) => false,
              );
            },
            icon: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
        SizedBox(width: 270),
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            onPressed: () {
              // heartColor = Colors.pink;
            },
            icon: Icon(CupertinoIcons.heart, color: heartColor, size: 16),
          ),
        ),
      ],
    );
  }
}
