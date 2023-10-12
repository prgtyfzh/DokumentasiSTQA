import 'package:exercise_paml/home_page.dart';
import 'package:exercise_paml/register_page.dart';
import 'package:flutter/material.dart';

/// Class ini berisi method dan tampilan untuk halaman login
class LoginPage extends StatefulWidget {
  /// Konstruktor kelas LoginPage.
  const LoginPage({super.key});

  @override

  /// Membuat dan mengembalikan objek _LoginPageState.
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /// Membuat global key untuk Form widget.
  final _formKey = GlobalKey<FormState>();

  /// Variabel untuk menyimpan nama pengguna.
  String? name;

  /// Variabel untuk menyimpan kata sandi.
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/2560px-International_Pok%C3%A9mon_logo.svg.png',
              width: 250,
              height: 250,
            ),
            Container(padding: const EdgeInsets.all(0)),
            const Text(
              "Let's get started.",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Container(padding: const EdgeInsets.all(5)),
            const Text(
              "There's No Sense In Going Out Of \n Your Way To Get Somebody To Like You.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Container(padding: const EdgeInsets.all(10)),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                right: 330,
              ),
              child: const Text(
                'Name',
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                } else if (value.length < 6) {
                  return 'Name must be at least 6 characters';
                }
                return null;
              },
              onSaved: (value) {
                name = value;
              },
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                right: 301,
              ),
              child: const Text(
                'Password',
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.deepPurple,
                ),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              onSaved: (value) {
                password = value;
              },
            ),
            Container(padding: const EdgeInsets.all(30)),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        name: name,
                      ),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: const Size(300, 50),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ]),
        ),
      )),
    );
  }
}
