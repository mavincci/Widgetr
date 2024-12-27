import 'package:flutter/material.dart';
import 'package:widgetr/pages/home_page.dart';

class WidgetrGallery extends StatelessWidget {
  const WidgetrGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
