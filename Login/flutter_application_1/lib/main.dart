import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _errorText = '';
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 0, 242),
            Color.fromARGB(255, 25, 0, 255)
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                'assets/perfil.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: 'Correo',
                labelText: 'Correo',
                prefixIcon: Icon(Icons.person),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            _errorText,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              String name = _nameController.text;
              String email = _emailController.text;

              if (name.isEmpty || email.isEmpty) {
                _displayError('Usuario y contraseña son requeridos');
              } else if (name.isEmpty) {
                _displayError('Usuario es requerido');
              } else if (email.isEmpty) {
                _displayError('Contraseña es requerida');
              } else {
                _displaySuccess('Login exitoso');

                if (kDebugMode) {
                  print('Name: $name');
                  print('Email: $email');
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20, 
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    20), 
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_forward, color: Colors.white),
                SizedBox(width: 20.0),
                Text('Submit', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _displayError(String errorMessage) {
    setState(() {
      _errorText = errorMessage;
    });

    _timer = Timer(const Duration(seconds: 4), () {
      setState(() {
        _errorText = '';
      });
    });
  }

  void _displaySuccess(String successMessage) {
    setState(() {
      _errorText = successMessage;
    });

    _timer = Timer(const Duration(seconds: 4), () {
      setState(() {
        _errorText = '';
      });
    });
  }
}
