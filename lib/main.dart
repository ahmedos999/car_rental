import 'package:car_rental/presentation/Screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              primary: Colors.black,
              secondary: const Color(0xffff6e49),
              tertiary: const Color(0xfff5f5f5)),
          useMaterial3: true,
          fontFamily: 'Poppins',
          textTheme: const TextTheme(
              titleLarge: TextStyle(fontFamily: 'Teko', fontSize: 22),
              bodyMedium: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              displaySmall: TextStyle(fontFamily: 'Poppins', fontSize: 18))),
      home: const HomePage(),
    );
  }
}
