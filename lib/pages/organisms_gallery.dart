import 'package:flutter/material.dart';

class OrganismsGallery extends StatelessWidget {
  const OrganismsGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organisms'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Organisms Gallery'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
