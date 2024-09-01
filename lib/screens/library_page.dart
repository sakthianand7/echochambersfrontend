import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Library'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListTile(
              title: Text('Saved Podcast #$index'),
              subtitle: const Text('Subtitle or Description'),
              trailing: const Icon(Icons.play_arrow),
              onTap: () {
                // Play or navigate to the podcast details page
              },
            ),
          );
        },
      ),
    );
  }
}
