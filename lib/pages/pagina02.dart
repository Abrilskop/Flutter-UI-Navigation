import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget{
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ESCOJE UNA OPCION"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("FIREBASE", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text("Firebase es una plataforma de desarrollo de aplicaciones web y móviles proporcionada por Google. Su propósito principal es ayudar a los desarrolladores a crear aplicaciones de alta calidad de manera rápida y sencilla, integrando diversos servicios backend sin tener que preocuparse por la infraestructura.", style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
            SizedBox(height: 15,),
            ElevatedButton(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Regresar a la pagina anterior", style: TextStyle(fontSize: 20),),
                    Icon(Icons.arrow_forward_ios)
                  ]),
                  onPressed: () =>{
                    Navigator.pop(context)
                  })
          ],
        ),
      ),
    );
  }
} 

