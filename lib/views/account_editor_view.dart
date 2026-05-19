import 'package:flutter/material.dart';

class AccountEditorView extends StatelessWidget {
  const AccountEditorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crear Cuenta")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text("Nombre"),
                border: OutlineInputBorder(),
              ),
            ),
            DropdownButtonFormField(
              items: [],
              onChanged: (value) {},
              decoration: InputDecoration(
                label: Text("Divisa"),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
    );
  }
}
