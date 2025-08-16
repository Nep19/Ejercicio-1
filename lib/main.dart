import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Importamos el paquete provider
import 'viewmodels/counter_viewmodel.dart';
import 'views/counter_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(), // Creamos nuestro ViewModel
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterView(), // La vista ahora puede acceder al ViewModel
    );
  }
}
