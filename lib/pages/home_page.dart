import 'package:flutter/material.dart';
import 'package:widgetr/pages/atoms_gallery.dart';
import 'package:widgetr/pages/molecules_gallery.dart';
import 'package:widgetr/pages/organisms_gallery.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgetr - a widget gallery app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AtomsGallery(),
                  ),
                );
              },
              child: const Text('Atoms Gallery'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MoleculesGallery(),
                  ),
                );
              },
              child: const Text('Molecules Gallery'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrganismsGallery(),
                  ),
                );
              },
              child: const Text('Organisms Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}
