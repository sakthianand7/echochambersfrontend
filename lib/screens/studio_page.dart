import 'package:flutter/material.dart';

class StudioPage extends StatefulWidget {
  const StudioPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StudioPageState createState() => _StudioPageState();
}

class _StudioPageState extends State<StudioPage> {
  String _title = '';
  double _duration = 30.0;
  String _selectedHost = 'Gemini';
  String _selectedHostGender = 'Male';
  String _selectedGuest = 'ChatGPT';
  String _selectedGuestGender = 'Female';

  void _generatePodcast() {
    // Functionality to generate the podcast goes here.
    print('Generating Podcast with the following details:');
    print('Title: $_title');
    print('Duration: $_duration minutes');
    print('Host: $_selectedHost ($_selectedHostGender)');
    print('Guest: $_selectedGuest ($_selectedGuestGender)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studio'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _title = value;
                  });
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Podcast Title',
                  labelStyle: TextStyle(color: Colors.orangeAccent),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                const Icon(Icons.timer, color: Colors.orangeAccent),
                const SizedBox(width: 10),
                Text('Duration: ${_duration.round()} minutes', style: const TextStyle(color: Colors.white)),
              ],
            ),
            Slider(
              activeColor: Colors.orangeAccent,
              value: _duration,
              min: 10,
              max: 120,
              divisions: 11,
              label: _duration.round().toString(),
              onChanged: (value) {
                setState(() {
                  _duration = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: [
                Icon(Icons.person, color: Colors.orangeAccent),
                SizedBox(width: 10),
                Text('Select Host:', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 10.0),
            _buildDropdownWithLabel('Host', _selectedHost, ['Gemini', 'ChatGPT'], (newValue) {
              setState(() {
                _selectedHost = newValue!;
              });
            }),
            const SizedBox(height: 10.0),
            _buildDropdownWithLabel('Gender', _selectedHostGender, ['Male', 'Female'], (newValue) {
              setState(() {
                _selectedHostGender = newValue!;
              });
            }),
            const SizedBox(height: 20.0),
            const Row(
              children: [
                Icon(Icons.person_add, color: Colors.orangeAccent),
                SizedBox(width: 10),
                Text('Select Guest:', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 10.0),
            _buildDropdownWithLabel('Guest', _selectedGuest, ['Gemini', 'ChatGPT'], (newValue) {
              setState(() {
                _selectedGuest = newValue!;
              });
            }),
            const SizedBox(height: 10.0),
            _buildDropdownWithLabel('Gender', _selectedGuestGender, ['Male', 'Female'], (newValue) {
              setState(() {
                _selectedGuestGender = newValue!;
              });
            }),
            const SizedBox(height: 40.0),
            Center(
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.orangeAccent, Colors.deepOrange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: _generatePodcast,
                  child: const Text(
                    'Generate Podcast',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget _buildDropdownWithLabel(String label, String value, List<String> options, ValueChanged<String?> onChanged) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButton<String>(
        value: value,
        dropdownColor: Colors.grey[850],
        isExpanded: true,
        underline: Container(),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.orangeAccent),
        items: options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: const TextStyle(color: Colors.white)),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
