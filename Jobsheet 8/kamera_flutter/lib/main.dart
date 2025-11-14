import 'package:flutter/material.dart';
import 'package:camera/camera.dart'; // Tambahkan import kamera
import 'widget/takepicture_screen.dart';
// Jadikan main async agar bisa memanggil availableCameras()
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil daftar kamera di perangkat
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: TakePictureScreen(
        camera: firstCamera,
      ),
    ),
  );
}
class MyApp extends StatelessWidget {
  final CameraDescription firstCamera;

  const MyApp({super.key, required this.firstCamera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        camera: firstCamera,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final CameraDescription camera;

  const MyHomePage({
    super.key,
    required this.title,
    required this.camera,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
