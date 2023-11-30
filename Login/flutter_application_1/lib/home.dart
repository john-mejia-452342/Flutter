import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Map<String, dynamic> userData;

  HomePage({required this.userData});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const Icon(Icons.person, size: 50),
                  title: Text('Nombre: ${userData['vendedor']['nombre']}'),
                  subtitle: Text('Cuenta: ${userData['vendedor']['cuenta']}'),
                ),
                ListTile(
                  leading: const Icon(Icons.phone, size: 50),
                  title: Text('Teléfono: ${userData['vendedor']['telefono']}'),
                ),
                ListTile(
                  leading: const Icon(Icons.credit_card, size: 50),
                  title: Text('Documento: ${userData['vendedor']['cedula']}'),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
