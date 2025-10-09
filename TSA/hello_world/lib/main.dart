import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//  Widget Utama Aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo Flutter Lengkap',
      home: MyHomePage(title: 'Flutter Widget Demo Lengkap'),
    );
  }
}

//  StatefulWidget untuk menampilkan semua contoh widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  DateTime selectedDate = DateTime.now(); // Untuk DatePicker
  final TextEditingController _nameController = TextEditingController(); // Untuk TextField

  // Fungsi increment counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi menampilkan alert dialog
  void _showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Halo!"),
      content: const Text("Ini adalah contoh AlertDialog."),
      actions: [okButton],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // Fungsi memilih tanggal (DatePicker)
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),

      //  Body berisi semua contoh widget
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 🔹 Scaffold Counter
              const Text('You have pushed the button this many times:'),
              Text(
                '$_counter',
               style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),

              // 🔹 Tombol untuk menampilkan Alert Dialog
              ElevatedButton(
                onPressed: () => _showAlertDialog(context),
                child: const Text("Tampilkan Alert Dialog"),
              ),
              const SizedBox(height: 20),

              // 🔹 TextField (Input nama)
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama Anda',
                ),
              ),
              const SizedBox(height: 20),

              // 🔹 Date Picker
              Text("Tanggal yang dipilih: ${selectedDate.toLocal()}".split(' ')[0]),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: const Text('Pilih Tanggal'),
              ),
            ],
          ),
        ),
      ),

      // 🔹 FloatingActionButton untuk increment counter
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        backgroundColor: Colors.pink,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.red.shade100,
        child: Container(height: 40),
      ),
    );
  }
}
