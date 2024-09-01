import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/library_page.dart';
import 'screens/studio_page.dart';
import 'screens/profile_page.dart';
import 'utils/theme.dart';

void main() {
  runApp(const EchoChambersApp());
}

class EchoChambersApp extends StatelessWidget {
  const EchoChambersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Echo Chambers',
      theme: AppTheme.theme,
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const LibraryPage(),
    const StudioPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 0), // Adjust the body padding to accommodate the player
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPlayer(), // Player widget at the bottom
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mic),
                label: 'Studio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.orangeAccent,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: true,
          ),
        ],
      ),
    );
  }

  Widget _buildPlayer() {
    return Container(
      color: Colors.grey[900],
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            const Icon(Icons.music_note, color: Colors.white),
            const SizedBox(width: 10),
            const Text(
              'Playing Podcast...',
              style: TextStyle(color: Colors.white),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.play_arrow, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.skip_next, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
