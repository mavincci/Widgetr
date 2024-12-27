import 'package:flutter/material.dart';

class MoleculesGallery extends StatelessWidget {
  const MoleculesGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Molecules'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Molecules Gallery'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
