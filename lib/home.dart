import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<GridItem> items = [
    GridItem('Materi', Icons.book),
    GridItem('Data Guru', Icons.person),
    GridItem('Daftar Nilai', Icons.assignment),
    GridItem('Absensi', Icons.calendar_today),
    GridItem('PPDB', Icons.school),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Sekolah'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // Handle item tap
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    items[index].icon,
                    size: 50.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    items[index].title,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          );
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
