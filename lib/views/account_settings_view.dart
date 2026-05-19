import 'package:flutter/material.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Settings View"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título: Mi cuenta
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
              child: Text(
                "Mi cuenta",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),

            // Botón: Editar cuenta
            Card(
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.person_outline, color: Colors.blue),
                title: const Text(
                  "Editar cuenta",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.grey,
                ),
                onTap: () {
                  // Aquí irá la acción para editar cuenta más adelante
                  print("Click en Editar cuenta");
                },
              ),
            ),
            const SizedBox(height: 10),

            // Botón: Eliminar cuenta
            Card(
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.delete_outline, color: Colors.red),
                title: const Text(
                  "Eliminar cuenta",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
                trailing: const Icon(Icons.close, size: 18, color: Colors.red),
                onTap: () {
                  // Aquí irá la acción para eliminar cuenta más adelante
                  print("Click en Eliminar cuenta");
                },
              ),
            ),
          ],
        ),
      ),

      // Barra de navegación inferior (los botones de abajo de tu boceto)
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Mantiene todos los iconos fijos
        currentIndex: 0, // Elemento seleccionado por defecto
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Avisos',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
        ],
      ),
    );
  }
}
