import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _themeMode == ThemeMode.dark
          ? MyAppThemConfig.dark().getTheme()
          : MyAppThemConfig.light().getTheme(),
      home: MyHomePage(
        toggleThemeMode: () {
          setState(() {
            if (_themeMode == ThemeMode.dark)
              _themeMode = ThemeMode.light;
            else
              _themeMode = ThemeMode.dark;
          });
        },
      ),
    );
  }
}

class MyAppThemConfig {
  final Color primaryColor = Colors.pink.shade400;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color surfaceColor;
  final Color backgroundColor;
  final Color appBarColor;
  final Brightness brightness;
  final Color fillColor;

  MyAppThemConfig.dark()
    : primaryTextColor = Colors.white,
      secondaryTextColor = Colors.white70,
      surfaceColor = Colors.pink,
      backgroundColor = Color.fromARGB(255, 30, 30, 30),
      appBarColor = Colors.black,
      brightness = Brightness.dark,
      fillColor = Color.fromARGB(200, 40, 40, 40);

  MyAppThemConfig.light()
    : primaryTextColor = Colors.black,
      secondaryTextColor = Colors.black,
      surfaceColor = Colors.pink,
      backgroundColor = Color.fromARGB(250, 250, 250, 250),
      appBarColor = Color.fromARGB(200, 200, 40, 80),
      brightness = Brightness.light,
        fillColor = Color.fromARGB(25, 30, 30, 30);

  ThemeData getTheme() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(180, 200, 40, 80),
          foregroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      primaryColor: Colors.pink.shade200,
      brightness: brightness,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(backgroundColor: appBarColor),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: fillColor,
      ),
      textTheme: GoogleFonts.latoTextTheme(
        TextTheme(
          bodyMedium: TextStyle(fontSize: 15, color: primaryTextColor),
          bodyLarge: TextStyle(fontSize: 18, color: secondaryTextColor),
          bodySmall: TextStyle(fontSize: 13, color: secondaryTextColor),
          headlineMedium: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: primaryTextColor,
          ),
          displayMedium: TextStyle(fontSize: 40, color: primaryTextColor),
          titleLarge: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Function() toggleThemeMode;

  const MyHomePage({super.key, required this.toggleThemeMode});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum _SkillType { photoshop, xd, illustrator, afterEffect, lightRoom }

class _MyHomePageState extends State<MyHomePage> {
  _SkillType _skill = _SkillType.photoshop;

  void updateSelectedSkill(_SkillType skillType) {
    setState(() {
      this._skill = skillType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculum vitea'),
        actions: [
          Icon(CupertinoIcons.chat_bubble),
          InkWell(
            onTap: widget.toggleThemeMode,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Berise Seraphin',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text('product as;ogha & a;sogih'),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.loop_thick,
                              size: 15,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'somthing',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                'Choreographer Vadim wants to dispel this myth. To do this, he wants to stage a show in which all the ballerinas gracefully move to the opposite side of the stage from their starting positions.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: Row(
                children: [
                  Text('Skills', style: Theme.of(context).textTheme.titleLarge),
                  Icon(CupertinoIcons.chevron_down, size: 10),
                ],
              ),
            ),
            Center(
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                runSpacing: 8,
                children: [
                  Skill(
                    type: _SkillType.photoshop,
                    title: 'PhotoShop',
                    imagePath: 'assets/images/app_icon_01.png',
                    shadowColor: Colors.blue,
                    isActive: _skill == _SkillType.photoshop,
                    onTap: () {
                      updateSelectedSkill(_SkillType.photoshop);
                    },
                  ),
                  Skill(
                    type: _SkillType.xd,
                    title: 'Adobe XD',
                    imagePath: 'assets/images/app_icon_02.png',
                    shadowColor: Colors.lightBlue,
                    isActive: _skill == _SkillType.xd,
                    onTap: () {
                      updateSelectedSkill(_SkillType.xd);
                    },
                  ),
                  Skill(
                    type: _SkillType.illustrator,
                    title: 'Illustrator',
                    imagePath: 'assets/images/app_icon_03.png',
                    shadowColor: Colors.deepPurpleAccent,
                    isActive: _skill == _SkillType.illustrator,
                    onTap: () {
                      updateSelectedSkill(_SkillType.illustrator);
                    },
                  ),
                  Skill(
                    type: _SkillType.afterEffect,
                    title: 'After Effect',
                    imagePath: 'assets/images/app_icon_04.png',
                    shadowColor: Colors.orange,
                    isActive: _skill == _SkillType.afterEffect,
                    onTap: () {
                      updateSelectedSkill(_SkillType.afterEffect);
                    },
                  ),
                  Skill(
                    type: _SkillType.lightRoom,
                    title: 'LightRoom',
                    imagePath: 'assets/images/app_icon_05.png',
                    shadowColor: Colors.pink,
                    isActive: _skill == _SkillType.lightRoom,
                    onTap: () {
                      updateSelectedSkill(_SkillType.lightRoom);
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal Information',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(CupertinoIcons.at),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(CupertinoIcons.lock),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Save'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Skill extends StatelessWidget {
  final _SkillType type;
  final String title;
  final String imagePath;
  final Color shadowColor;
  final bool isActive;
  final Function() onTap;

  const Skill({
    Key? key,
    required this.type,
    required this.title,
    required this.imagePath,
    required this.shadowColor,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isActive
                  ? BoxDecoration(
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor.withOpacity(0.5),
                          blurRadius: 20,
                          spreadRadius: 2,
                        ),
                      ],
                    )
                  : null,
              child: Image.asset(imagePath, width: 40, height: 40),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
