import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Echo Chambers'),
        backgroundColor: Colors.black, // Dark background for AppBar
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Featured Podcasts',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent, // Orange accent for headings
                ),
              ),
              const SizedBox(height: 10),
              _buildPodcastList(),
              const SizedBox(height: 20),
              const Text(
                'Recommendations',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent, // Orange accent for headings
                ),
              ),
              const SizedBox(height: 10),
              _buildPodcastList(),
              const SizedBox(height: 20),
              const Text(
                'New Releases',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent, // Orange accent for headings
                ),
              ),
              const SizedBox(height: 10),
              _buildPodcastList(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black, // Dark background for the page
    );
  }

  Widget _buildPodcastList() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            margin: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 150,
                  color: Colors.grey[800], // Dark grey for podcast images
                  child: const Center(
                    child: Icon(
                      Icons.audiotrack,
                      color: Colors.white, // White icon to stand out
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Podcast Title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white), // White text for titles
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
