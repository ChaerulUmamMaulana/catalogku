import 'package:flutter/material.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
    create: (context) => CarModel(),
    child: const MyApp(),
  ),
  );
  
}