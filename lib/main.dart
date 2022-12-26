import 'package:flutter/material.dart';
import 'package:ui/config/palette.dart';
import 'package:ui/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      // initialRoute: '/home',
      // routes: {
      //   '/home': (context) => const DashboardPage(),
      //   '/search': (context) => const SearchPage(),
      // },
      home: const NavBar(),
    );
  }
}
