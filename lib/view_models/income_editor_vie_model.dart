import 'package:flutter/material.dart';

class IncomeEditorViewModel {
  // 1. Controladores para capturar el texto de los campos de tu boceto (Monto, Concepto, Fecha)
  final TextEditingController amountController = TextEditingController();
  final TextEditingController conceptController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  // 2. Estado para la opción seleccionada en el menú desplegable (Categoría)
  String selectedCategory = 'Salario';
  
  // 3. Lista con las opciones que se mostrarán en la interfaz de la app
  final List<String> categories = ['Salario', 'Inversiones', 'Ventas', 'Premios', 'Otros'];

  // 4. Limpieza obligatoria de controladores para cuidar la memoria del teléfono
  void dispose() {
    amountController.dispose();
    conceptController.dispose();
    dateController.dispose();
  }
}
