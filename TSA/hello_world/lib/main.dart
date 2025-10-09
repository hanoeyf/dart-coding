import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ==========================
    // SOAL 1 – 3
    // ==========================

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // Soal 3: beri padding 32 di semua sisi
      child: Row(
        children: [
          // Soal 1: Column di dalam Expanded dan crossAxisAlignment.start
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Soal 2: Baris pertama teks di dalam Container dengan padding = 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Gunung Panderman',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Soal 2: Teks berwarna abu-abu
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Soal 3: Tambahkan ikon bintang merah dan teks “41”
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const SizedBox(width: 8),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Soal 3: Ganti body yang sebelumnya “Hello World” menjadi titleSection
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
