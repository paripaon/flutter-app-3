import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myaplication1/Home.dart';
import 'package:myaplication1/product_data.dart';

class MythirdPage extends StatelessWidget {
  final product producta;

  const MythirdPage({super.key, required this.producta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBarClassThird(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 8),
              Text(
                producta.name,
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
                        child: Image.asset(
                          'assets/images/${producta.imagePath}',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 8),
                      child: Text(producta.category),
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
                        producta.price,
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
                        'version : ${producta.version}',
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
                height: 700,
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
                        child: Text(
                          'Features:',
                          style: TextStyle(
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.white54,
                                offset: Offset(1, 0),
                              ),
                            ],
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                        child: Text('"💻 Are you ready to test your problem-solving skills and push your limits in the world of algorithms and data processing? \n \n The Technology Olympics 2025 brings you two exciting competitions where creativity, logic, and technical mastery meet high-level challenges—and top teams win prizes! \n \n\n\n🎈 Algorithm Track Preliminary Round (Online): Thursday, September 25, \n 2025Final Round (Onsite – Tehran, Iran): Thursday, October 30, \n 2025 Closing Ceremony: Friday, October 31,\n 2025 Data Processing Track Preliminary Round (Online – 24 Hours): September 26–27, \n 2025 Final Round (Onsite – Tehran, Iran): Thursday, October 30, \n 2025 Closing Ceremony: Friday, October 31, 2025 \n \n\n🏆 Prizes for Each Track Top 5 Teams in Preliminary Round: Qualification for the Final Round Travel expenses up to 200 per person Hotel accommodation, local transportation, and meals in Tehran covered Cash prizes:\n🥇 1st: 600\n🥈 2nd: 450\n🥉 3rd: 300\n🏅 4th: 250\n🏅 5th: 200"',
                          style: TextStyle(
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.white54,
                                offset: Offset(0, 0),
                              ),
                            ],
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarClassThird extends StatelessWidget implements PreferredSizeWidget {
  const AppBarClassThird({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isLiked = ValueNotifier(false);
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
        SizedBox(width: 270),
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            icon: ValueListenableBuilder<bool>(
              valueListenable: isLiked,
              builder: (context, value, child) {
                return Icon(
                  value ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                  color: Colors.white,
                );
              },
            ),
            onPressed: () {
              isLiked.value = !isLiked.value;
            },
          )
        ),
      ],
    );
  }
}
