import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final List<String> _tabs = ['Listen', 'Published', 'Generated', 'Favorites'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Library'),
          backgroundColor: Colors.black,
          bottom: TabBar(
            indicatorColor: Colors.orangeAccent,
            indicatorWeight: 3.0,
            labelColor: Colors.orangeAccent,
            unselectedLabelColor: Colors.grey,
            tabs: _tabs.map((tab) => Tab(text: tab)).toList(),
          ),
        ),
        body: TabBarView(
          children: _tabs.map((tab) => _buildTabContent(tab)).toList(),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget _buildTabContent(String tab) {
    switch (tab) {
      case 'Listen':
        return const Center(
          child: Text(
            'Listen to your saved podcasts here.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        );
      case 'Published':
        return const Center(
          child: Text(
            'Your published podcasts will be shown here.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        );
      case 'Generated':
        return const Center(
          child: Text(
            'Your AI-generated podcasts will be listed here.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        );
      case 'Favorites':
        return const Center(
          child: Text(
            'Your favorite podcasts will appear here.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        );
      default:
        return Container();
    }
  }
}
