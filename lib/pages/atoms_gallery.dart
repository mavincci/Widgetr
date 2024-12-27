import 'package:flutter/material.dart';

class AtomsGallery extends StatelessWidget {
  const AtomsGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.blue,
      Colors.red,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atoms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Colors'),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    color: colors[index],
                    width: 80,
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20, height: 20),
                  itemCount: colors.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
