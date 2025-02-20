import 'package:flutter/material.dart';
import 'package:tabbarynavegacion/screens/tabs_screen.dart';  // Importa la pantalla que contiene las pestañas

void main() {
  runApp(const MyApp());  // Llama a runApp para ejecutar la aplicación
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Desactiva la etiqueta de "debug" en la app
      title: 'Material App',  // Título de la aplicación
      initialRoute: 'tabs',  // Establece la ruta inicial
      routes: {
        'tabs': (context) => const TabsScreen()  // Asocia la ruta 'tabs' con la pantalla TabsScreen
      }
    );
  }
}
