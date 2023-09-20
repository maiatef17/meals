import 'package:flutter/material.dart';
import 'package:pets_app/presentations/pages/categories_page.dart';
import 'package:pets_app/presentations/pages/form_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:categoriesPage(),
    );
  }
}