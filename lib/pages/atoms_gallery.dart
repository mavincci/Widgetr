import 'package:flutter/material.dart';

class AtomsGallery extends StatelessWidget {
  const AtomsGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atoms'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Atoms Gallery'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
