import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ======= Bagian titleSection =======
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32 di semua sisi
      child: Row(
        children: [
          Expanded(
            // (soal 1) Kolom menyesuaikan ruang yang tersisa
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
              children: [
                // (soal 2) Teks pertama di dalam Container agar bisa diberi padding bawah 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // (soal 2) Teks kedua berwarna abu-abu
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // (soal 3) Ikon bintang merah dan teks '41'
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // ======= Tampilan utama aplikasi =======
    return MaterialApp(
      title: 'Flutter layout: Hanifah Kurniasari - 2241720010',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
