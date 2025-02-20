/*AUTOR: Gianella Alexandra Ramos Ticahuanca */

import "package:flutter/material.dart";

import 'package:tabbarynavegacion/screens/tabs_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  // este widget 
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'tabs',
      routes:{
        'tabs': (context) => const TabsScreen()
      }
    );
  }
}