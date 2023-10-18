import 'package:flutter/material.dart';
import 'package:ocean/profileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ocean',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      supportedLocales: {const Locale('en', '')},
      debugShowCheckedModeBanner: true,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const ProfileScreen(),
        '/notify': (context) => const ProfileScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
