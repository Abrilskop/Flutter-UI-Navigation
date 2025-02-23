import 'package:flutter/material.dart';
import 'package:tabbarynavegacion/screens/tabs_screen.dart'; 
import 'package:tabbarynavegacion/pages/login.dart'; 
class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ESCOGE UNA OPCION"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "FIREBASE",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Firebase es una plataforma de desarrollo de aplicaciones web y móviles proporcionada por Google. Su propósito principal es ayudar a los desarrolladores a crear aplicaciones de alta calidad de manera rápida y sencilla, integrando diversos servicios backend sin tener que preocuparse por la infraestructura.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Regresar al inicio", style: TextStyle(fontSize: 20)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onPressed: () => {
                Navigator.pop(context)
              },
            ),
            const SizedBox(height: 15), // Espaciado entre los botones
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Ir a juegos Poki", style: TextStyle(fontSize: 20)),
                  Icon(Icons.arrow_forward)
                ],
              ),
              onPressed: () {
                // Aquí puedes agregar la acción que quieras, como navegar a otra página
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TabsScreen()), // Reemplaza con la página a la que quieras ir
                );
              },
            ),
            const SizedBox(height: 15), // Espaciado entre los botones
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Iniciar Session", style: TextStyle(fontSize: 20)),
                  Icon(Icons.arrow_forward)
                ],
              ),
              onPressed: () {
                // Aquí puedes agregar la acción que quieras, como navegar a otra página
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()), // Reemplaza con la página a la que quieras ir
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
