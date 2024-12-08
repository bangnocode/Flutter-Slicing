// lib/main.dart
import 'package:flutter/material.dart';

class NvBottomnavbar extends StatefulWidget {
  @override
  _BottomNavbarExampleState createState() => _BottomNavbarExampleState();
}

class _BottomNavbarExampleState extends State<NvBottomnavbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktek Bottom Navbar'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, 
        onTap: _onItemTapped,
      ),
    );
  }
}

// Halaman pertama
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Home',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Halaman kedua
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Search',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Halaman ketiga
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Profile',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
