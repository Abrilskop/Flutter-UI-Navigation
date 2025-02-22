import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget{
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido a Taxi Cono!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
               "Hola !",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
        ),
    );
  }
} 