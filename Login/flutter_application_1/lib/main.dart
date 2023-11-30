import 'dart:convert';
import 'home.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
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
            const SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Usuario',
                        filled: true,
                        fillColor: Color.fromARGB(255, 183, 183, 183),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Digite el Usuario';
                        }
                        return null;
                      },
                      autofocus: true,
                      controller: usuarioController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Color.fromARGB(255, 183, 183, 183),
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Digite el Paassword';
                        }
                        return null;
                      },
                      autofocus: false,
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () async {
                          var headers = {'Content-Type': 'application/json'};
                          var request = http.Request(
                              'POST',
                              Uri.parse(
                                  'https://transporte-czaa.onrender.com/api/vendedor/vendedor_datos'));
                          request.body = json.encode({
                            "cuenta": usuarioController.text,
                            "clave": passwordController.text
                          });
                          request.headers.addAll(headers);

                          http.StreamedResponse response = await request.send();

                          if (response.statusCode == 200) {
                            String userDataString = await response.stream.bytesToString();
                            print(userDataString);

                            Map<String, dynamic> userData = jsonDecode(userDataString);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(userData: userData),
                              ),
                            );
                          } else {
                            print(response.reasonPhrase);
                          }
                          // if (_formKey.currentState!.validate()) {
                          //   // Process data.
                          // }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                        ),
                        child: const Text('Enviar'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
