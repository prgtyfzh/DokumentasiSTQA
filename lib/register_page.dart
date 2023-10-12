import 'package:exercise_paml/home_page.dart';
import 'package:exercise_paml/login_page.dart';
import 'package:flutter/material.dart';

/// Class ini mengatur method dan tampilan untuk halaman register
class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  /// Kunci global untuk form
  final _formKey = GlobalKey<FormState>();

  /// Variabel untuk menyimpan nama
  String? name;

  /// Variabel untuk menyimpan email
  String? email;

  /// Controller untuk password
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          /// Menggunakan kunci form untuk validasi
          key: _formKey,

          child: Column(children: [
            Container(padding: const EdgeInsets.all(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                /// Navigasi ke halaman login ketika tombol kembali ditekan
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(13),
                  minimumSize: const Size(5, 5),
                ),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            Container(padding: const EdgeInsets.all(10)),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://www.yangcanggih.com/wp-content/uploads/2016/07/Pokemon-Go-feat-image.jpg'),
            ),
            Container(padding: const EdgeInsets.all(20)),
            const Text(
              'Register',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
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
                  Icons.email,
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
                /// Menyimpan nilai nama
                name = value;
              },
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                right: 330,
              ),
              child: const Text(
                'Email',
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.deepPurple,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              onSaved: (value) {
                email = value;
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
              controller: _passwordController,
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
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                right: 280,
              ),
              child: const Text(
                'Re-Password',
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Re-Enter your password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.deepPurple,
                ),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value != _passwordController.text) {
                  return 'Password must be the same';
                }
                return null;
              },
            ),
            Container(padding: const EdgeInsets.all(20)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: const Size(300, 50),
              ),
              child: const Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(name: name),
                    ),
                  );
                }
                setState(() {});
              },
            )
          ]),
        ),
      )),
    );
  }
}
