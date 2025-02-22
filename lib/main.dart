import 'package:flutter/material.dart';
import 'package:tabbarynavegacion/pages/pagina02.dart';  // Importa la pantalla que contiene las pestañas

void main() {
  runApp(const MyApp());  // Llama a runApp para ejecutar la aplicación
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NOTITAS UWU', 
      debugShowCheckedModeBanner: false, // Título de la aplicación
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NOTITAS UWU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() =>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Text(
            'Home'
          ),
          ElevatedButton(
              child: Text("Empieza ya!"),
              onPressed: () => {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pagina02() ))
              })
          ],
        ),
      ),
    );
  }
}

