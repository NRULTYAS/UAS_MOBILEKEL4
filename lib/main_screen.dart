import 'package:flutter/material.dart';
import 'home.dart';
import 'laporan.dart';
import 'info.dart';
import 'profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Deklarasi variabel

  final List<GridItem> items = [
    GridItem('Data Sekolah', Icons.school),
    GridItem('Info Sekolah', Icons.info),
    GridItem('Laporan', Icons.assignment),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Laporan(),
    Info(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sistem Informasi SDN 1 KERTAJAYA'),
        backgroundColor: Colors.blue[900],
      ),
      body: _widgetOptions[_selectedIndex], // Hanya satu argumen 'body' yang digunakan
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.blue),
            label: 'Data Sekolah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Colors.blue),
            label: 'Info Sekolah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Colors.blue),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline, color: Colors.blue),
            label: 'Tentang Aplikasi',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 59, 95, 255),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class GridItem {
  final String title;
  final IconData icon;

  GridItem(this.title, this.icon);
}
