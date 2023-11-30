import 'package:flutter/material.dart';

void main() => runApp(const FormExampleApp());

class FormExampleApp extends StatelessWidget {
  const FormExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Sample'),
          centerTitle: true,
        ),
        body: const FormExample(),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Cedula',
                  filled: true,
                  fillColor: Color.fromARGB(255, 183, 183, 183),
                  prefixIcon: Icon(Icons.assignment_ind),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite su cedula';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nombre',
                  filled: true,
                  fillColor: Color.fromARGB(255, 183, 183, 183),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite su nombre';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Telefono',
                  filled: true,
                  fillColor: Color.fromARGB(255, 183, 183, 183),
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite su telefono';
                  }
                  return null;
                },
              
                keyboardType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                    }
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
    );
  }
}
