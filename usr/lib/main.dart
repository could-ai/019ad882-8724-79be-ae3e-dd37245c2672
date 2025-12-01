import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindSpace',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A1B9A), // Deep Purple
          secondary: const Color(0xFFF06292), // Pink
          surface: const Color(0xFFF3E5F5), // Light Purple Surface
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
      },
    );
  }
}
