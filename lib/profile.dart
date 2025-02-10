import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Aplikasi'),
        backgroundColor: const Color.fromARGB(214, 102, 183, 241),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Aplikasi Sistem Informasi',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]),
            ),
            const SizedBox(height: 16),
            const Text(
              'Aplikasi ini memberikan informasi tentang Sistem Informasi SDN 1 KERTAJAYA',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 16),
            Text(
              'Pembuat:',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]),
            ),
            const SizedBox(height: 8),
            const Text(
              'Rachma Hikmawanti, Nurul S.R, Ineke Ayu S',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 4),
            const Text(
              'Kelas     : TIF RP 222 CID',
              style: TextStyle(fontSize: 18, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
