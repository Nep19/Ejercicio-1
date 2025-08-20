// Archivo: lib/main.dart

import 'package:my_app/views/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/counter_viewmodel.dart';
// import 'views/counter_view.dart'; // Comentado en la imagen, posiblemente no usado aquí

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: MainScreen(), // La vista ahora puede acceder al ViewModel
    ); // MaterialApp
  }
}
