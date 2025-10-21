import 'package:flutter/material.dart';
import 'scan_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          //Modifikasi menjadi ListTile
          child: ListTile(
            leading: const Icon(Icons.camera_alt, color: Colors.blue),
            title: const Text('Mulai Pindai Teks Baru'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ScanScreen()),
              );
            },
          ),
        ),
      ),
    );
  }
}
