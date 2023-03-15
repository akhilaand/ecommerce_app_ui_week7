// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:cloth_app/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomBottomNavigtionBar(),
    );
  }
}


