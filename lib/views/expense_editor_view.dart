import 'package:flutter/material.dart';

class IncomeEditorVIew extends StatelessWidget {
  const IncomeEditorVIew({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crear Ingreso")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text("Monto"),
                border: OutlineInputBorder(),
              ),
            ),
            DropdownButtonFormField(
              items: [],
              onChanged: (value) {},
              decoration: InputDecoration(
                label: Text("Categoria"),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Concepto"),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Fecha"),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.save),
        label: Text("Guardar"),
      ),
    );
  }
}
