import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.black, // Matches the color scheme
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[800],
                  child: const Icon(Icons.person, size: 60, color: Colors.orangeAccent),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Column(
                  children: [
                    Text('John Doe', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orangeAccent)),
                    SizedBox(height: 5),
                    Text('user@example.com', style: TextStyle(fontSize: 16, color: Colors.grey)),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Divider(color: Colors.grey[700]),
              const SizedBox(height: 10),
              _buildOption(context, Icons.settings, 'Settings', Colors.grey),
              _buildOption(context, Icons.help_outline, 'Help & Support', Colors.blueAccent),
              _buildOption(context, Icons.logout, 'Log Out', Colors.orangeAccent),
              const SizedBox(height: 20),
              Divider(color: Colors.grey[700]),
              const SizedBox(height: 10),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Navigate to account management or other action
                  },
                  child: const Text('Manage Account', style: TextStyle(color: Colors.orangeAccent)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(BuildContext context, IconData icon, String title, Color color) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 18)),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
      onTap: () {
        // Handle navigation or action
      },
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      tileColor: Colors.grey[900], // Matches the overall dark theme
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minLeadingWidth: 40,
    );
  }
}
