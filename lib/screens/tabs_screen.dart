import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,  // Define el número de pestañas
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: const [
              TabBar(
                labelColor: Colors.black,  // Color de la etiqueta seleccionada
                unselectedLabelColor: Colors.grey,  // Color de la etiqueta no seleccionada
                tabs: [
                  Tab(text: 'Tab 1'),  // Pestaña 1
                  Tab(text: 'Tab 2'),  // Pestaña 2
                  Tab(text: 'Tab 3'),  // Pestaña 3
                  Tab(text: 'Tab 4'),  // Pestaña 4
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car_outlined, size: 100),  // Ícono para la primera pestaña
                    Icon(Icons.directions_transit_filled_outlined, size: 100),  // Ícono para la segunda pestaña
                    Icon(Icons.directions_bike_sharp, size: 100),  // Ícono para la tercera pestaña
                    Icon(Icons.directions_walk_sharp, size: 100),  // Ícono para la cuarta pestaña
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
