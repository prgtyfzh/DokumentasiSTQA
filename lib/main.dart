import 'package:exercise_paml/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Class `MyApp` adalah titik awal aplikasi Flutter. Ini mengonfigurasi tema dan tampilan pertama yang akan ditampilkan ketika aplikasi dijalankan.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const WelcomePage(),
    );
  }
}
