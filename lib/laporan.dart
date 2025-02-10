import 'package:flutter/material.dart';

class Laporan extends StatelessWidget {
  const Laporan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laporan'),
        backgroundColor: const Color.fromARGB(214, 102, 183, 241),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.book, color: Colors.blue),
                title: Text(
                  'Laporan Materi',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Berisi laporan tentang materi pelajaran yang telah diajarkan.',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text(
                  'Laporan Data Guru',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Berisi laporan mengenai data guru yang mengajar.',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.assignment, color: Colors.blue),
                title: Text(
                  'Laporan Daftar Nilai',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Berisi laporan tentang daftar nilai siswa.',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.blue),
                title: Text(
                  'Laporan Absensi',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Berisi laporan tentang kehadiran siswa.',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.school, color: Colors.blue),
                title: Text(
                  'Laporan PPDB',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Berisi laporan tentang Penerimaan Peserta Didik Baru.',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
