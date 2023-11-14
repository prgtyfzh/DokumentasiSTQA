import 'package:exercise_paml/login_page.dart';
import 'package:flutter/material.dart';

/// Class ini mengatur tampilan untuk halaman welcome
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override

  /// Membangun tampilan widget di sini dan mengembalikan objek Widget.
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pokédex.',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
            Container(padding: const EdgeInsets.all(20)),
            const Text(
              'Welcome to Pokédex \n You can find your favorite pokemon here',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            Container(padding: const EdgeInsets.all(65)),
            Image.asset(
              'assets/icon.png',
              width: 200,
              height: 200,
            ),
            Container(padding: const EdgeInsets.all(65)),

            /// Tombol untuk pindah ke halaman login.
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
              ),
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        )),
      ),
    );
  }
}
